import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/client_data.entity.dart';
import '../repositories/auth.repository.dart';


@injectable
class ClientPhoneNumbersUseCase implements UseCase<ClientDataEntity, String> {
  final AuthRepository _repo;

  ClientPhoneNumbersUseCase(this._repo);

  @override
  Future<Either<Failure, ClientDataEntity>> call(String params) =>
      _repo.clientPhoneNumbers(params);
}
