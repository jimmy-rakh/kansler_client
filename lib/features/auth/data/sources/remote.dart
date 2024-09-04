import 'package:dartz/dartz.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_response.dart';
import 'package:kansler/features/auth/data/models/register/register_request.dart';

import '../../../../core/error/failure.dart';
import '../models/auth/request.dart';
import '../models/auth/response.dart';
import '../models/confirm_code/confirm_request.dart';
import '../models/send_code/request.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, AuthResponse>> authentification(AuthRequest request);

  Future<Either<Failure, ConfirmResponse>> confirmCode(ConfirmRequest request);

  Future<Either<Failure, ClientInfoResponse>> clientInfo(String inn);

  Future<Either<Failure, ConfirmResponse>> register(RegisterRequest request);

  Future<Either<Failure, void>> sendCode(
      String requestId, SendCodeRequest request);

  Future<Either<Failure, AuthResponse>> setUserName(
      String requestId, AuthRequest request);
}
