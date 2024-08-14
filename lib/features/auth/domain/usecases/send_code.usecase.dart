import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';



@injectable
class SendCodeUseCase
    implements UseCase<void, ({String requestId, String phoneNumber})> {
  final AuthRepository _repo;

  SendCodeUseCase(this._repo);

  @override
  Future<Either<Failure, void>> call(
          ({String requestId, String phoneNumber}) params) =>
      _repo.sendCode(params.requestId, params.phoneNumber);
}
