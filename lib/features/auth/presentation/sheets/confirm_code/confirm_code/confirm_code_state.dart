part of 'confirm_code_bloc.dart';

enum ConfirmCodeStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class ConfirmCodeState with _$ConfirmCodeState {
  const factory ConfirmCodeState({
    @Default(ConfirmCodeStatus.initial) status,
    @Default(59) int leftSeconds,
    String? requestId,
    SendCodeRequest? request,
    String? username,
  }) = _Initial;
}
