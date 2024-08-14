import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/login_params.entity.dart';
import '../repositories/auth.repository.dart';



@injectable
class SetUserNameUseCase
    implements UseCase<String, ({String requestId, LoginParamsEntity params})> {
  final AuthRepository _repo;

  SetUserNameUseCase(this._repo);

  @override
  Future<Either<Failure, String>> call(
          ({String requestId, LoginParamsEntity params}) params) =>
      _repo.setUserName(params.requestId, params.params);
}
