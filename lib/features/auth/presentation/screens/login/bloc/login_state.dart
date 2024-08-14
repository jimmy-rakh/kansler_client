part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.ready({
    @Default(false) isBusy,
    @Default(false) validated,
    @Default(false) showPass,
    String? error,
  }) = _Ready;
}
