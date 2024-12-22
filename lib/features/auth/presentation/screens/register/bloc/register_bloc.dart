import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/models/register/address_request.dart';
import 'package:kansler/features/auth/data/models/register/register_request.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import '../../../../../../app/router.dart';
import '../../../../../../core/enums/register_step.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../../domain/usecases/set_auth_token.usecase.dart';
import '../../auth/bloc/auth_bloc.dart';

part 'register_state.dart';
part 'register_event.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;
  final SetAuthTokenUseCase _setAuthTokenUseCase;

  RegisterBloc(
    this._authRepository,
    this._setAuthTokenUseCase,
  ) : super(const RegisterState.ready()) {
    on<_Init>(_onInit);
    on<_CheckInn>(_onCheckInn);
    on<_SendCode>(_onSendCode);
    on<_SetPassword>(_onSetPassword);
    on<_Register>(_onRegister);
    on<_ShowPassToggle>(_onShowPassToggle);
    on<_ShowRepeatedPassToggle>(_onShowRepeatedPassToggle);
    on<_AddError>(_onAddError);
  }

  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController innController = TextEditingController();
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

    // final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

    final request = RegisterRequest(
      name: nameController.text.isEmpty ? null : nameController.text,
      password: passwordController.text,
      phoneNumber: (phoneNumberController.text)
        .replaceAll(RegExp(r'[^0-9]'), ''),
      requestId: state.requestId!,
      username: usernameController.text,
      addresses: state.address,
      addressesId: state.addressId,
    );

    final res = await _authRepository.register(request);

    res.fold((l) => null, (r) async {
      try {
        await _setAuthTokenUseCase.call(r.deviceToken);
        authBloc.add(const AuthEvent.checkStatus());
        router.replace(const MainRoute());
      } catch (e) {
        log.e(e.toString());
      }
    });
  }

  void _onCheckInn(_CheckInn event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    // final res = await _checkClientExistUseCase.call(innController.text);
    // emit(state.copyWith(isLoading: false));
    // res.fold(
    //   (l) => emit(state.copyWith(error: (l as ServerFailure).message)),
    //   (r) {
    //     emit(state.copyWith(requestId: r ?? ""));

    //     _showCompanySheet(r);
    //   },
    // );
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

    // final res = await _clientPhoneNumbersUseCase.call(requestId);

    // res.fold((l) => null, (r) async {
    //   final phone = (await router.showSheet(CompanyInfoSheet(
    //     clientData: r,
    //   ))) as String?;

    //   _checkPhoneNumber(r.phoneNumbers, phone, requestId);
    // });
  }

  void _onSendCode(_SendCode event, Emitter<RegisterState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // await _sendCodeUseCase.call((
      //   phoneNumber: event.phone,
      //   requestId: event.requestId,
      // ));
      emit(state.copyWith(isLoading: false));

      // final res = await router.showSheet(
      //   BlocProvider(
      //     create: (context) => getIt<ConfirmCodeBloc>(),
      //     child: ConfirmCodeSheet(
      //       number: event.phone,
      //       requestId: event.requestId,
      //     ),
      //   ),
      // ) as bool?;

      // if (res != null) {
      //   emit((state as _Ready).copyWith(step: RegisterStep.inputLogin));
      // }
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

  void _onInit(_Init event, Emitter<RegisterState> emit) {
    phoneNumberController.text = event.phone;
    innController.text = event.inn ?? '';
    emit(state.copyWith(
      requestId: event.requestId,
      address: event.address,
      addressId: event.addressId,
    ));
  }
}
