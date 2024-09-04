import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_response.dart';
import 'package:kansler/features/auth/data/models/register/register_request.dart';
import 'package:kansler/features/auth/data/sources/remote.dart';
import 'package:kansler/features/auth/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../models/auth/request.dart';
import '../models/auth/response.dart';
import '../models/send_code/request.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final DioClient _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, AuthResponse>> authentification(
      AuthRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.auth,
      data: request.toJson(),
      converter: (response) =>
          AuthResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, ClientInfoResponse>> clientInfo(String inn) async {
    final res = await _dio.getRequest(
      '${AuthRemoteKeys.clientInfo}/$inn',
      converter: (r) => ClientInfoResponse.fromJson(r as Map<String, dynamic>),
    );

    return res;
  }

  @override
  Future<Either<Failure, ConfirmResponse>> confirmCode(
      ConfirmRequest request) async {
    final result = await _dio.postRequest(
      '${AuthRemoteKeys.clientConfirmCode}/${request.requestId}',
      data: request.toJson(),
      converter: (response) =>
          ConfirmResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, ConfirmResponse>> register(
      RegisterRequest request) async {
    final result = await _dio.postRequest(
        '${AuthRemoteKeys.clientRegister}/${request.requestId}',
        data: request.toJson(),
        converter: (response) =>
            ConfirmResponse.fromJson(response as Map<String, dynamic>));

    return result;
  }

  @override
  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request) async {
    final result = await _dio.postRequest(
      '${AuthRemoteKeys.clientSendCode}/$requestId',
      data: request.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, AuthResponse>> setUserName(
      String requestId, AuthRequest request) {
    // TODO: implement setUserName
    throw UnimplementedError();
  }
}
