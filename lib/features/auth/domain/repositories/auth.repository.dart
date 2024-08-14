import 'package:dartz/dartz.dart';
import '../../../../core/enums/auth_status.dart';
import '../../../../core/error/failure.dart';
import '../entities/client_data.entity.dart';
import '../entities/login_params.entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> login(LoginParamsEntity request);

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, String?>> checkClientExists(String inn);

  Future<Either<Failure, ClientDataEntity>> clientPhoneNumbers(
      String requestId);

  Future<Either<Failure, void>> confirmCode(
      String requestId, String phoneNumber, String code);

  Future<Either<Failure, void>> sendCode(String requestId, String phoneNumber);

  Future<Either<Failure, String>> setUserName(
      String requestId, LoginParamsEntity request);

  Future<void> setAuthToken(String token);

  String? getAuthToken();

  AuthStatus getAuthStatus();
}
