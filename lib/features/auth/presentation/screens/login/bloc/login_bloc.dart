import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../app/di.dart';
import '../../../../../../app/router.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../shared/services/device/device_info_service.dart';
import '../../../../domain/entities/login_params.entity.dart';
import '../../../../domain/usecases/login.usecase.dart';
import '../../../../domain/usecases/set_auth_token.usecase.dart';
import '../../auth/bloc/auth_bloc.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final SetAuthTokenUseCase _setAuthTokenUseCase;

  LoginBloc(this._loginUseCase, this._setAuthTokenUseCase)
      : super(const LoginState.ready()) {
    on<_Login>(_onLogIn);
    on<_ShowPassToggle>(_onShowPassToggle);
  }

  TextEditingController innController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  void _onLogIn(_Login event, Emitter<LoginState> emit) async {
    emit((state as _Ready).copyWith(isBusy: true));

    final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

    final loginParams = LoginParamsEntity(
      username: innController.text,
      password: passwordController.text,
      fcmToken: 'fcmToken',
      device: deviceInfo,
    );

    final res = await _loginUseCase.call(loginParams);

    res.fold(
      (l) => emit(state.copyWith(
        isBusy: false,
        error: (l as ServerFailure).message,
      )),
      (r) async {
        try {
          emit(state.copyWith(error: null));
          await _setAuthTokenUseCase.call(r);
          authBloc.add(const AuthEvent.checkStatus());

          router.popForced(true);
        } catch (e) {
          emit(state.copyWith(error: e.toString()));
        }
      },
    );
  }

  FutureOr<void> _onShowPassToggle(
      _ShowPassToggle event, Emitter<LoginState> emit) {
    emit((state as _Ready).copyWith(showPass: !state.showPass));
  }
}
