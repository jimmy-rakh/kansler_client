part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = _Unknown;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.guest() = _Guest;
  const factory AuthState.firstEntry() = _FirstEntry;
  const factory AuthState.error() = _Error;
}
