part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login() = _Login;
  const factory LoginEvent.showPassToggle() = _ShowPassToggle;
}
