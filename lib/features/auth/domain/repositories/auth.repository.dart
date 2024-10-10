import 'package:dartz/dartz.dart';
import 'package:kansler/features/auth/data/models/auth/request.dart';
import 'package:kansler/features/auth/data/models/auth/response.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_response.dart';
import 'package:kansler/features/auth/data/models/register/register_request.dart';
import 'package:kansler/features/auth/data/models/send_code/request.dart';
import '../../../../core/enums/auth_status.dart';
import '../../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> authentification(AuthRequest request);

  Future<Either<Failure, ConfirmResponse>> confirmCode(ConfirmRequest request);

  Future<Either<Failure, ClientInfoResponse>> clientInfo(String inn);

  Future<Either<Failure, ConfirmResponse>> register(RegisterRequest request);

  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request);

  Future<Either<Failure, AuthResponse>> setUserName(
      String requestId, AuthRequest request);

  Future<void> setAuthToken(String token);

  String? getAuthToken();

  String? getSessionKey();

  Future<void> setSessionKey(String sessionKey);

  AuthStatus getAuthStatus();

  Future<Either<Failure, void>> logout();
}
