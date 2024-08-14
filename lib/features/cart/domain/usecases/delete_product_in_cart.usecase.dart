import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/cart.repository.dart';


@injectable
class DeleteProductInCartUsecase implements UseCase<void, int> {
  final CartRepository _repo;

  DeleteProductInCartUsecase(this._repo);

  @override
  Future<Either<Failure, void>> call(int params) =>
      _repo.deleteProductInCart(params);
}
