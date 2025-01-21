import 'dart:async';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/client_type.dart';
import 'package:kansler/features/auth/data/models/auth/request.dart';
import 'package:kansler/features/auth/data/models/client_info/client_adress_dto.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/register/address_request.dart';
import 'package:kansler/features/auth/data/models/send_code/request.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import 'package:kansler/features/auth/presentation/sheets/company_info/company_info_sheet.dart';
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code/confirm_code_bloc.dart';
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code_sheet.dart';
import 'package:kansler/shared/services/firebase/notification_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smart_auth/smart_auth.dart';
import '../../../../../../app/di.dart';
import '../../../../../../app/router.dart';
import '../../../../../../shared/services/device/device_info.dart';
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
    on<_UpdateCountdown>(_onUpdateCountdown);
  }

  TextEditingController valueController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final loginFocus = FocusNode();
  final formKey = GlobalKey<FormState>();

  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  Timer? _timer;

  void _onLogIn(_Login event, Emitter<LoginState> emit) async {
    if (!formKey.currentState!.validate()) return;

    if (state.tabIndex == 1 && state.requestId != null && !state.isExist) {
      _sendCode();
      return;
    }

    emit(state.copyWith(isBusy: true, error: null));
    ClientAdressDto? address;

    if (state.hasPass && state.tabIndex == 1) {
      final request = ConfirmRequest(
        value: passController.text,
        username: usernameController.text,
        requestId: state.requestId!,
      );

      final res = await _authRepository.confirmCode(request);

      res.fold((l) => emit(state.copyWith(isBusy: false)), (r) async {
        try {
          emit(state.copyWith(requestId: null));
          await _setAuthTokenUseCase.call(r.deviceToken);
          authBloc.add(const AuthEvent.checkStatus());
          router.replace(const MainRoute());
          return;
        } catch (e) {
          emit(state.copyWith(isBusy: false));
          return;
        }
      });
    }

    if (state.tabIndex == 1 && state.addressCid == null) {
      final info = await getInfo();

      if (info?.deliveryaddressSet?.isNotEmpty ?? false) {
        address = await router.showSheet(CompanyInfoSheet(clientData: info!))
            as ClientAdressDto?;

        if (address == null) {
          emit(state.copyWith(
            isBusy: false,
          ));
          return;
        }

        emit(state.copyWith(
          addressCid: address.cid,
          addressId: address.id,
          isBusy: false,
        ));
      }
    }

    late DeviceInfo deviceInfo;
    DeviceInfoPlugin infoPlugin = DeviceInfoPlugin();
    if (kIsWeb) {
      WebBrowserInfo webBrowserInfo = await infoPlugin.webBrowserInfo;
      deviceInfo = DeviceInfo(
        info: webBrowserInfo.userAgent.toString(),
        imei: 'appId',
        name: webBrowserInfo.browserName.name,
        appVersion: webBrowserInfo.appVersion.toString(),
        type: 3,
      );
    } else {
      deviceInfo = await getIt<DeviceInfoService>().getDeviceData();
    }

    final token = kIsWeb ? 'web' : await NotificationService.getToken();

    final request = AuthRequest(
      value: address?.cid.toString() ??
          valueController.text.replaceAll(RegExp(r'[^0-9]'), ''),
      clientType: ClientType.values[state.tabIndex],
      fcmToken: token ?? 'none',
      device: deviceInfo,
    );
    final res = await _authRepository.authentification(request);

    res.fold(
      (l) => emit(state.copyWith(
        isBusy: false,
        error: 'Неправильный формат!\nВведите корректно как указано выще',
      )),
      (r) async {
        try {
          emit(state.copyWith(
            isBusy: false,
            requestId: r.requestId,
            hasPass: r.hasPass ?? false,
            isExist: r.isExists,
          ));

          print(phoneController.text.isNotEmpty);

          if (state.tabIndex == 0 ||
              (state.addressCid != null && phoneController.text.isNotEmpty)) {
            _sendCode();
            return;
          }

          if (!(r.hasPass ?? false) &&
              state.tabIndex == 1 &&
              phoneController.text.isEmpty) {
            return;
          }

          if (r.hasPass ?? false) {
            passController = TextEditingController();
            return;
          }
        } catch (e) {
          emit(state.copyWith(error: e.toString()));
        }
      },
    );

    emit(state.copyWith(isBusy: false));
  }

  Future<ClientInfoResponse?> getInfo() async {
    final res = await _authRepository.clientInfo(valueController.text);

    return res.fold(
      (l) => null,
      (r) => r,
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
    phoneController = TextEditingController();
    usernameController = TextEditingController();

    loginFocus.unfocus();

    emit(state.copyWith(
      tabIndex: event.index,
      requestId: null,
      isExist: true,
      hasPass: false,
    ));
  }

  void _sendCode() async {
    AddressRequest? address;

    final request = SendCodeRequest(
      phoneNumber: (phoneController.text.isEmpty
              ? valueController.text
              : phoneController.text)
          .replaceAll(RegExp(r'[^0-9]'), ''),
      hashedCode: (await SmartAuth().getAppSignature()),
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
            request: request,
          ),
        ),
      ) as String?;

      if (confirmed == null) return;

      _initTimer();

      if (confirmed.isEmpty) {
        router.push(
          RegisterRoute(
            phone: state.tabIndex == 0
                ? valueController.text
                : phoneController.text,
            requestId: state.requestId!,
            inn: state.tabIndex == 0 ? null : valueController.text,
            address: address,
            addressId: null,
          ),
        );
        return;
      }
      await _setAuthTokenUseCase.call(confirmed!);
      authBloc.add(const AuthEvent.checkStatus());
      router.replace(const MainRoute());
    });
  }

  Future<AddressRequest?> _showMap() async {
    if (!kIsWeb) {
      final granted = await Permission.location.isGranted;

      if (!granted) {
        final res = await Permission.locationWhenInUse.request();

        if (res != PermissionStatus.granted) {
          return null;
        }
      }
    } else {
      final permission = await Geolocator.requestPermission();

      if (![LocationPermission.always, LocationPermission.whileInUse]
          .contains(permission)) {
        return null;
      }
    }

    final res = await router.push(const MapRoute()) as AddressRequest?;

    return res;
  }

  void _onUpdateCountdown(_UpdateCountdown event, Emitter<LoginState> emit) {
    emit(state.copyWith(leftSeconds: event.seconds));
  }

  void _initTimer() {
    // if (state.leftSeconds != 59) return;
    int leftSeconds = 25;
    _timer = Timer.periodic(const Duration(seconds: 1), (tick) {
      leftSeconds--;
      if (!isClosed) add(LoginEvent.updateCountdown(leftSeconds));

      if (leftSeconds <= 0 || isClosed) {
        _timer?.cancel();
        return;
      }
    });
  }
}
