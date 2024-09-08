import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
import 'package:permission_handler/permission_handler.dart';
import '../../../../../../app/di.dart';
import '../../../../../../app/router.dart';
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
  TextEditingController usernameController = TextEditingController();
  late TextEditingController passController;
  final loginFocus = FocusNode();

  final authBloc =
      BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

  void _onLogIn(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isBusy: true, error: null));
    ClientAdressDto? address;

    if (state.hasPass) {
      final request = ConfirmRequest(
        value: passController.text,
        username: usernameController.text,
        requestId: state.requestId!,
      );

      final res = await _authRepository.confirmCode(request);

      res.fold((l) => emit(state.copyWith(isBusy: false)), (r) async {
        try {
          await _setAuthTokenUseCase.call(r.deviceToken);
          authBloc.add(const AuthEvent.checkStatus());
          router.popUntilRoot();
          return;
        } catch (e) {
          emit(state.copyWith(isBusy: false));
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

    if (state.requestId == null) {
      final deviceInfo = await getIt<DeviceInfoService>().getDeviceData();

      final request = AuthRequest(
        value: address?.cid.toString() ?? valueController.text,
        clientType: ClientType.values[state.tabIndex],
        fcmToken: 'fcmTokåen',
        device: deviceInfo,
      );
      final res = await _authRepository.authentification(request);

      res.fold(
        (l) => emit(state.copyWith(
          isBusy: false,
          error: 'По вашему запросу ничего не найдено',
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
          } catch (e) {
            emit(state.copyWith(error: e.toString()));
          }
        },
      );
    }

    if ((phoneController.text.isNotEmpty || state.tabIndex == 0) &&
        !state.hasPass) _sendCode();

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
        if (state.addressCid == null) {
          address = await _showMap();

          if (address == null) {
            return;
          }
        }
        router.push(
          RegisterRoute(
            phone: state.tabIndex == 0
                ? valueController.text
                : phoneController.text,
            requestId: state.requestId!,
            inn: state.tabIndex == 0 ? null : valueController.text,
            address: address,
            addressId: state.addressId,
          ),
        );
      }
    });
  }

  Future<AddressRequest?> _showMap() async {
    final granted = await Permission.location.isGranted;

    print(granted);

    if (!granted) {
      final res = await Permission.locationWhenInUse.request();

      if (res != PermissionStatus.granted) return null;
    }

    final res = await router.push(const MapRoute()) as AddressRequest?;

    return res;
  }
}
