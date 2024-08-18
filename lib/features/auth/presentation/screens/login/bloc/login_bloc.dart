import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/client_type.dart';
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
      : super(const LoginState()) {
    on<_Init>(_onInit);
    on<_Login>(_onLogIn);
    on<_ShowPassToggle>(_onShowPassToggle);
    on<_ChangeTabIndex>(_onChangeTabIndex);
  }

  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginFocus = FocusNode();

  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  void _onLogIn(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isBusy: true));

    final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

    final loginParams = LoginParamsEntity(
      value: loginController.text,
      clientType: ClientType.values[state.tabIndex],
      // fcmToken: 'fcmToken',
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

  void _onShowPassToggle(_ShowPassToggle event, Emitter<LoginState> emit) {
    emit(state.copyWith(showPass: !state.showPass));
  }

  void _onInit(_Init event, Emitter<LoginState> emit) {
    event.tabController.addListener(
      () => add(LoginEvent.changeTabIndex(event.tabController.index)),
    );
  }

  void _onChangeTabIndex(_ChangeTabIndex event, Emitter<LoginState> emit) {
    if (loginController.text.isNotEmpty) {
      loginController = TextEditingController();
    }

    loginFocus.unfocus();

    emit(state.copyWith(tabIndex: event.index));
  }
}
