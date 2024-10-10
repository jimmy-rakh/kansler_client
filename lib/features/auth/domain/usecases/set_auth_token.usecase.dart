import 'package:injectable/injectable.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';



@injectable
class SetAuthTokenUseCase implements UseCaseNoFuture<void, String> {
  final AuthRepository _repo;

  SetAuthTokenUseCase(this._repo);

  @override
  Future<void> call(String params) => _repo.setAuthToken(params);
}

@injectable
class SetSession implements UseCaseNoFuture<void, String> {
  final AuthRepository _repo;

  SetSession(this._repo);

  @override
  Future<void> call(String params) => _repo.setSessionKey(params);
}
