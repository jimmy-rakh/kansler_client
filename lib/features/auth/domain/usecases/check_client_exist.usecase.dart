import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';


@injectable
class CheckClientExistUseCase implements UseCase<void, String> {
  final AuthRepository _repo;

  CheckClientExistUseCase(this._repo);

  @override
  Future<Either<Failure, String?>> call(String params) =>
      _repo.checkClientExists(params);
}
