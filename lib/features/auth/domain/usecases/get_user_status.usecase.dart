import 'package:injectable/injectable.dart';

import '../../../../core/enums/auth_status.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/auth.repository.dart';

@injectable
class GetAuthStatusUseCase implements UseCaseNoFuture<AuthStatus, NoParams> {
  final AuthRepository _repo;

  GetAuthStatusUseCase(this._repo);

  @override
  AuthStatus call(NoParams params) => _repo.getAuthStatus();
}
