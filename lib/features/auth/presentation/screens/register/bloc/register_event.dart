part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.init(
    String requestId,
    String phone,
    String? inn,
    AddressRequest? address,
    int? addressId,
  ) = _Init;
  const factory RegisterEvent.register() = _Register;
  const factory RegisterEvent.checkInn() = _CheckInn;
  const factory RegisterEvent.sendCode(String phone, String requestId) =
      _SendCode;
  const factory RegisterEvent.setPassword() = _SetPassword;
  const factory RegisterEvent.showPassToggle() = _ShowPassToggle;
  const factory RegisterEvent.showRepeatedPassToggle() =
      _ShowRepeatedPassToggle;
  const factory RegisterEvent.addError(String error) = _AddError;
}
