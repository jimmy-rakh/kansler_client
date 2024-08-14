import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/sources/remote.dart';
import 'package:kansler/features/auth/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../models/basic_response.dart';
import '../models/client_data/response.dart';
import '../models/client_exists/request.dart';
import '../models/client_exists/response.dart';
import '../models/confirm_code/request.dart';
import '../models/login/request.dart';
import '../models/login/response.dart';
import '../models/send_code/request.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final DioClient _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, LoginResponse>> login(LoginRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.signIn,
      data: request.toJson(),
      converter: (response) =>
          LoginResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, BasicResponse>> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ClientExistsResponse>> checkClientExists(
      ClientExistsRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.checkClientExist,
      data: request.toJson(),
      converter: (response) =>
          ClientExistsResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, ClientDataResponse>> clientPhoneNumbers(
      String requestId) async {
    final result = await _dio.getRequest(
      AuthRemoteKeys.clientPhoneNumbers.replaceAll('requestId', requestId),
      converter: (response) =>
          ClientDataResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> confirmCode(
      String requestId, ConfirmCodeRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.confirmCode.replaceAll('requestId', requestId),
      data: request.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.sendCode.replaceAll('requestId', requestId),
      data: request.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, LoginResponse>> setUserName(
      String requestId, LoginRequest request) async {
    final result = await _dio.postRequest(
      AuthRemoteKeys.setUserName.replaceAll('requestId', requestId),
      data: request.toJson(),
      converter: (response) =>
          LoginResponse.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }
}
