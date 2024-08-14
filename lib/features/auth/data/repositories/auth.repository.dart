import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/enums/auth_status.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/client_data.entity.dart';
import '../../domain/entities/login_params.entity.dart';
import '../../domain/repositories/auth.repository.dart';
import '../models/client_exists/request.dart';
import '../models/confirm_code/request.dart';
import '../models/login/request.dart';
import '../models/send_code/request.dart';
import '../sources/local.dart';
import '../sources/remote.dart';


@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);

  @override
  Future<Either<Failure, String?>> checkClientExists(String inn) async {
    final request = ClientExistsRequest(inn: inn);
    final response = await _authRemoteDataSource.checkClientExists(request);

    return response.fold(
      (failure) => Left(failure),
      (data) {
        if (data.requestId?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(data.requestId);
      },
    );
  }

  @override
  Future<Either<Failure, ClientDataEntity>> clientPhoneNumbers(
      String requestId) async {
    final response = await _authRemoteDataSource.clientPhoneNumbers(requestId);

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> confirmCode(
      String requestId, String phoneNumber, String code) async {
    final request = ConfirmCodeRequest(phoneNumber: phoneNumber, code: code);
    final response =
        await _authRemoteDataSource.confirmCode(requestId, request);

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response),
    );
  }

  @override
  Future<Either<Failure, String>> login(LoginParamsEntity params) async {
    final request = LoginRequest.fromEntity(params);
    final response = await _authRemoteDataSource.login(request);

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.authToken),
    );
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _authLocalDataSource.setAuthToken(null);
      await _authLocalDataSource.setAuthStatus(AuthStatus.guest);
      return Right(() {});
    } catch (e) {
      return Left(NoDataFailure());
    }
  }

  @override
  Future<Either<Failure, void>> sendCode(
      String requestId, String phoneNumber) async {
    final request = SendCodeRequest(phoneNumber: phoneNumber);
    final response = await _authRemoteDataSource.sendCode(requestId, request);

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response),
    );
  }

  @override
  Future<Either<Failure, String>> setUserName(
      String requestId, LoginParamsEntity params) async {
    final request = LoginRequest.fromEntity(params);
    final response =
        await _authRemoteDataSource.setUserName(requestId, request);

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.authToken),
    );
  }

  @override
  String? getAuthToken() {
    return _authLocalDataSource.getAuthToken();
  }

  @override
  Future<void> setAuthToken(String token) async {
    try {
      await _authLocalDataSource.setAuthToken(token);
      await _authLocalDataSource.setAuthStatus(AuthStatus.authenticated);
    } catch (e) {
      rethrow;
    }
  }

  @override
  AuthStatus getAuthStatus() {
    return _authLocalDataSource.getAuthStatus();
  }
}
