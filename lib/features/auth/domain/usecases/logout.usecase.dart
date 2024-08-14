import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';


@injectable
class LogoutUseCase implements UseCase<void, NoParams> {
  final AuthRepository _repo;

  LogoutUseCase(this._repo);

  @override
  Future<Either<Failure, void>> call(NoParams params) => _repo.logout();
}
