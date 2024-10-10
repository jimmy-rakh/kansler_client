import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/models/auth/response.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_response.dart';
import 'package:kansler/features/auth/data/models/register/register_request.dart';
import '../../../../core/enums/auth_status.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/auth.repository.dart';
import '../models/auth/request.dart';
import '../models/send_code/request.dart';
import '../sources/local.dart';
import '../sources/remote.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);

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
  String? getSessionKey() {
    return _authLocalDataSource.getSessionKey();
  }

  @override
  Future<void> setSessionKey(String token) async {
    try {
      await _authLocalDataSource.setSessionKey(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  AuthStatus getAuthStatus() {
    return _authLocalDataSource.getAuthStatus();
  }

  @override
  Future<Either<Failure, AuthResponse>> authentification(
      AuthRequest request) async {
    final res = await _authRemoteDataSource.authentification(request);

    return res;
  }

  @override
  Future<Either<Failure, ClientInfoResponse>> clientInfo(
      String inn) async {
    final res = await _authRemoteDataSource.clientInfo(inn);

    return res;
  }

  @override
  Future<Either<Failure, ConfirmResponse>> confirmCode(
      ConfirmRequest request) async {
    final res = await _authRemoteDataSource.confirmCode(request);

    return res;
  }

  @override
  Future<Either<Failure, ConfirmResponse>> register(
      RegisterRequest request) async {
    final res = await _authRemoteDataSource.register(request);

    return res;
  }

  @override
  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request) async {
    final res = await _authRemoteDataSource.sendCode(requestId, request);

    return res;
  }

  @override
  Future<Either<Failure, AuthResponse>> setUserName(
      String requestId, AuthRequest request) {
    // TODO: implement setUserName
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _authLocalDataSource.setAuthToken(null);
      await _authLocalDataSource.setAuthStatus(AuthStatus.guest);
      return const Right(null);
    } catch (e) {
      return Left(NoDataFailure());
    }
  }
}
