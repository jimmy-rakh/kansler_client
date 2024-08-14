import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/enums/auth_status.dart';
import 'local.dart';
import 'local.keys.dart';


@Singleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  AuthStatus getAuthStatus() {
    final box = Hive.box(AuthLocalKeys.authBox);
    return box.get(AuthLocalKeys.authStatus, defaultValue: AuthStatus.unknown);
  }

  @override
  Future<void> setAuthStatus(AuthStatus status) async {
    final box = Hive.box(AuthLocalKeys.authBox);
    try {
      await box.put(AuthLocalKeys.authStatus, status);
    } catch (e) {
      rethrow;
    }
  }

  @override
  String? getAuthToken() {
    final box = Hive.box(AuthLocalKeys.authBox);
    return box.get(AuthLocalKeys.authToken, defaultValue: null);
  }

  @override
  String? getDeviceToken() {
    final box = Hive.box(AuthLocalKeys.authBox);
    return box.get(AuthLocalKeys.deviceToken, defaultValue: null);
  }

  @override
  Future<void> setAuthToken(String? token) async {
    final box = Hive.box(AuthLocalKeys.authBox);
    try {
      await box.put(AuthLocalKeys.authToken, token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setDeviceToken(String token) async {
    final box = Hive.box(AuthLocalKeys.authBox);
    try {
      await box.put(AuthLocalKeys.deviceToken, token);
    } catch (e) {
      rethrow;
    }
  }
}
