part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  register,
  hasPassword,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default(false) bool isBusy,
    @Default(false) bool validated,
    @Default(false) bool showPass,
    @Default(false) bool hasPass,
    @Default(true) bool isExist,
    @Default(0) int tabIndex,
    String? addressCid,
    int? addressId,
    String? requestId,
    String? error,
    @Default(0) int leftSeconds,
  }) = _LoginState;
}
