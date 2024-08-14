import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/cart.repository.dart';


@injectable
class GetCartPriceUseCase implements UseCase<int, NoParams> {
  final CartRepository _repo;

  GetCartPriceUseCase(this._repo);

  @override
  Future<Either<Failure, int>> call(NoParams params) => _repo.getCartPrice();
}
