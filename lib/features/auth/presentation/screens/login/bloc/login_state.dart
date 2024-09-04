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
    @Default(false) isBusy,
    @Default(false) validated,
    @Default(false) showPass,
    @Default(false) hasPass,
    @Default(true) isExist,
    @Default(0) int tabIndex,
    String? addressCid,
    int? addressId,
    String? requestId,
    String? error,
  }) = _LoginState;
}
