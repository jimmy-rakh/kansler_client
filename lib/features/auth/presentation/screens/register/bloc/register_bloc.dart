import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/client_type.dart';

import '../../../../../../app/di.dart';
import '../../../../../../app/router.dart';
import '../../../../../../core/enums/register_step.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../shared/services/device/device_info_service.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../../domain/entities/login_params.entity.dart';
import '../../../../domain/usecases/check_client_exist.usecase.dart';
import '../../../../domain/usecases/client_phone_numbers.usecase.dart';
import '../../../../domain/usecases/send_code.usecase.dart';
import '../../../../domain/usecases/set_auth_token.usecase.dart';
import '../../../../domain/usecases/set_username.usecase.dart';
import '../../../sheets/company_info/company_info_sheet.dart';
import '../../../sheets/confirm_code/confirm_code/confirm_code_bloc.dart';
import '../../../sheets/confirm_code/confirm_code_sheet.dart';
import '../../auth/bloc/auth_bloc.dart';


part 'register_state.dart';
part 'register_event.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final CheckClientExistUseCase _checkClientExistUseCase;
  final ClientPhoneNumbersUseCase _clientPhoneNumbersUseCase;
  final SendCodeUseCase _sendCodeUseCase;
  final SetUserNameUseCase _setUserNameUseCase;
  final SetAuthTokenUseCase _setAuthTokenUseCase;

  RegisterBloc(
    this._checkClientExistUseCase,
    this._clientPhoneNumbersUseCase,
    this._sendCodeUseCase,
    this._setUserNameUseCase,
    this._setAuthTokenUseCase,
  ) : super(const RegisterState.ready()) {
    on<_CheckInn>(_onCheckInn);
    on<_SendCode>(_onSendCode);
    on<_SetPassword>(_onSetPassword);
    on<_Register>(_onRegister);
    on<_ShowPassToggle>(_onShowPassToggle);
    on<_ShowRepeatedPassToggle>(_onShowRepeatedPassToggle);
    on<_AddError>(_onAddError);
  }

  TextEditingController innController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController secondPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final popularBloc =
      BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
  final latestBloc =
      BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  void _onRegister(_Register event, Emitter<RegisterState> emit) async {
    if (formKey.currentState == null) return;

    if (!formKey.currentState!.validate()) return;

    final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

    final loginParams = LoginParamsEntity(
      value: innController.text,
      clientType: ClientType.company,
      // fcmToken: 'fcmToken',
      device: deviceInfo,
    );

    final res = await _setUserNameUseCase
        .call((params: loginParams, requestId: state.requestId!));

    res.fold((l) => null, (r) async {
      try {
        await _setAuthTokenUseCase.call(r);
        authBloc.add(const AuthEvent.checkStatus());
        router.popUntilRoot();
      } catch (e) {
        log.e(e.toString());
      }
    });
  }

  void _onCheckInn(_CheckInn event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _checkClientExistUseCase.call(innController.text);
    emit(state.copyWith(isLoading: false));
    res.fold(
      (l) => emit(state.copyWith(error: (l as ServerFailure).message)),
      (r) {
        emit(state.copyWith(requestId: r ?? ""));

        _showCompanySheet(r);
      },
    );
  }

  void _onSetPassword(_SetPassword event, Emitter<RegisterState> emit) {}

  void _onShowPassToggle(_ShowPassToggle event, Emitter<RegisterState> emit) {
    emit((state as _Ready).copyWith(showPass: !state.showPass));
  }

  void _onShowRepeatedPassToggle(
      _ShowRepeatedPassToggle event, Emitter<RegisterState> emit) {
    emit((state as _Ready).copyWith(showRepeatedPass: !state.showRepeatedPass));
  }

  Future<void> _showCompanySheet(String? requestId) async {
    if (requestId == null) return;

    final res = await _clientPhoneNumbersUseCase.call(requestId);

    res.fold((l) => null, (r) async {
      final phone = (await router.showSheet(CompanyInfoSheet(
        clientData: r,
      ))) as String?;

      _checkPhoneNumber(r.phoneNumbers, phone, requestId);
    });
  }

  void _onSendCode(_SendCode event, Emitter<RegisterState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      await _sendCodeUseCase.call((
        phoneNumber: event.phone,
        requestId: event.requestId,
      ));
      emit(state.copyWith(isLoading: false));

      final res = await router.showSheet(
        BlocProvider(
          create: (context) => getIt<ConfirmCodeBloc>(),
          child: ConfirmCodeSheet(
            number: event.phone,
            requestId: event.requestId,
          ),
        ),
      ) as bool?;

      if (res != null) {
        emit((state as _Ready).copyWith(step: RegisterStep.inputLogin));
      }
    } catch (e) {
      log.e(e.toString());
    }
  }

  String? secondPasswordValidator(String? data) {
    if (passwordController.text != data) {
      return 'Пароли не совпадают';
    }
    return null;
  }

  void _checkPhoneNumber(
      List<String>? numbers, String? phone, String requestId) {
    if (phone == null) return;

    bool currect = false;

    for (var number in numbers!) {
      final subNumbers =
          number.split(',').map((e) => e.replaceAll(RegExp(r'[^0-9]'), ''));

      if (subNumbers.contains(phone)) {
        currect = true;
        break;
      }
    }

    if (!currect) {
      add(const RegisterEvent.addError(
          'Номер не найден!\nСвяжитесь с менеджером'));
      return;
    }

    add(RegisterEvent.sendCode(phone, requestId));
  }

  void _onAddError(_AddError event, Emitter<RegisterState> emit) {
    emit((state as _Ready).copyWith(error: event.error));
  }
}
