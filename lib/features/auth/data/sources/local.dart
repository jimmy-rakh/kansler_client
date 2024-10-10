

import '../../../../core/enums/auth_status.dart';

abstract class AuthLocalDataSource {
  Future<void> setAuthStatus(AuthStatus status);

  AuthStatus getAuthStatus();

  Future<void> setAuthToken(String? token);

  String? getAuthToken();

  String? getSessionKey();

  Future<void> setSessionKey(String sessionKey);

  Future<void> setDeviceToken(String token);

  String? getDeviceToken();
}
