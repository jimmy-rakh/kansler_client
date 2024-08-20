import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/client_type.dart';
import 'package:kansler/features/auth/data/models/auth/request.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/send_code/request.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code/confirm_code_bloc.dart';
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code_sheet.dart';
import '../../../../../../app/di.dart';
import '../../../../../../app/router.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../shared/services/device/device_info_service.dart';
import '../../../../domain/usecases/set_auth_token.usecase.dart';
import '../../auth/bloc/auth_bloc.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  final SetAuthTokenUseCase _setAuthTokenUseCase;

  LoginBloc(this._authRepository, this._setAuthTokenUseCase)
      : super(const LoginState()) {
    on<_Init>(_onInit);
    on<_Login>(_onLogIn);
    on<_ShowPassToggle>(_onShowPassToggle);
    on<_ChangeTabIndex>(_onChangeTabIndex);
  }

  TextEditingController valueController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  late TextEditingController passController;
  final loginFocus = FocusNode();

  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  void _onLogIn(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isBusy: true));

    if (state.hasPass) {
      final request = ConfirmRequest(
        value: passController.text,
        usePassword: true,
        requestId: state.requestId!,
      );

      final res = await _authRepository.confirmCode(request);

      res.fold((l) => emit(state.copyWith(isBusy: false)), (r) async {
        try {
          await _setAuthTokenUseCase.call(r.deviceToken);
          authBloc.add(const AuthEvent.checkStatus());
          router.popUntilRoot();
        } catch (e) {
          emit(state.copyWith(isBusy: false));
        }
      });
    }

    final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

    final request = AuthRequest(
      value: valueController.text,
      clientType: ClientType.values[state.tabIndex],
      fcmToken: 'fcmTokåen',
      device: deviceInfo,
    );

    final res = await _authRepository.authentification(request);

    res.fold(
      (l) => emit(state.copyWith(
        isBusy: false,
        error: (l as ServerFailure).message,
      )),
      (r) async {
        try {
          emit(state.copyWith(
            isBusy: false,
            requestId: r.requestId,
            hasPass: r.hasPass,
            isExist: r.isExists,
          ));

          if (!r.hasPass &&
              state.tabIndex == 1 &&
              phoneController.text.isEmpty) {
            return;
          }

          if (r.hasPass) {
            passController = TextEditingController();
            return;
          }

          _sendCode();
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
    if (valueController.text.isNotEmpty) {
      valueController = TextEditingController();
    }

    loginFocus.unfocus();

    emit(state.copyWith(tabIndex: event.index, isExist: true, hasPass: false));
  }

  void _sendCode() async {
    final request = SendCodeRequest(
      phoneNumber: phoneController.text.isEmpty
          ? valueController.text
          : phoneController.text,
    );

    final res = await _authRepository.sendCode(
      state.requestId!,
      request,
    );

    res.fold((l) => null, (r) async {
      final confirmed = await router.showSheet(
            BlocProvider(
              create: (context) => getIt<ConfirmCodeBloc>(),
              child: ConfirmCodeSheet(
                number: state.tabIndex == 1
                    ? phoneController.text
                    : valueController.text,
                requestId: state.requestId!,
              ),
            ),
          ) ??
          false;

      if (confirmed) {
        router.push(
          RegisterRoute(
            phone: state.tabIndex == 0
                ? valueController.text
                : phoneController.text,
            requestId: state.requestId!,
            inn: state.tabIndex == 0 ? null : valueController.text,
          ),
        );
      }
    });
  }
}
