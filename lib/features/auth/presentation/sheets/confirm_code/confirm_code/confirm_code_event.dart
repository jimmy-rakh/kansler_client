part of 'confirm_code_bloc.dart';

@freezed
class ConfirmCodeEvent with _$ConfirmCodeEvent {
  const factory ConfirmCodeEvent.confirm(String phone, String requestId) =
      _Confirm;
}
