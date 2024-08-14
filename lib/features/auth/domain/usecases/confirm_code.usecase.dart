import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';


@injectable
class ConfirmCodeUseCase
    implements
        UseCase<void, ({String requestId, String phoneNumber, String code})> {
  final AuthRepository _repo;

  ConfirmCodeUseCase(this._repo);

  @override
  Future<Either<Failure, void>> call(
          ({String requestId, String phoneNumber, String code}) params) =>
      _repo.confirmCode(params.requestId, params.phoneNumber, params.code);
}
