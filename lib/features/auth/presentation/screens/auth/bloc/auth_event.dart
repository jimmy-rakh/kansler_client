part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkStatus() = _CheckStatus;
  const factory AuthEvent.logout() = _LogOut;
}
