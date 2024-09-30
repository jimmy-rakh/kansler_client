part of 'confirm_code_bloc.dart';

@freezed
class ConfirmCodeEvent with _$ConfirmCodeEvent {
  const factory ConfirmCodeEvent.init(String requestId, SendCodeRequest request) =
      _Init;
  const factory ConfirmCodeEvent.confirm(String phone, String requestId) =
      _Confirm;
  const factory ConfirmCodeEvent.updateCountdown(int seconds) =
      _UpdateCountdown;
  const factory ConfirmCodeEvent.resend() = _Resend;
}
