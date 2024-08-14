import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/basic_response.dart';
import '../models/client_data/response.dart';
import '../models/client_exists/request.dart';
import '../models/client_exists/response.dart';
import '../models/confirm_code/request.dart';
import '../models/login/request.dart';
import '../models/login/response.dart';
import '../models/send_code/request.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginRequest request);

  Future<Either<Failure, BasicResponse>> logout();

  Future<Either<Failure, ClientExistsResponse>> checkClientExists(
      ClientExistsRequest request);

  Future<Either<Failure, ClientDataResponse>> clientPhoneNumbers(String requestId);

  Future<Either<Failure, void>> confirmCode(
      String requestId, ConfirmCodeRequest request);

  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request);

  Future<Either<Failure, LoginResponse>> setUserName(
      String requestId, LoginRequest request);
}
