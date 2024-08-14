import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/login_params.entity.dart';
import '../repositories/auth.repository.dart';

@injectable
class LoginUseCase implements UseCase<String, LoginParamsEntity> {
  final AuthRepository _repo;

  LoginUseCase(this._repo);

  @override
  Future<Either<Failure, String>> call(LoginParamsEntity params) =>
      _repo.login(params);
}
