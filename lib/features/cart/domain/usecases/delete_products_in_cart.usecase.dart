import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/cart.repository.dart';


@injectable
class DeleteProductsInCartUsecase implements UseCase<void, List<int>> {
  final CartRepository _repo;

  DeleteProductsInCartUsecase(this._repo);

  @override
  Future<Either<Failure, void>> call(List<int> params) =>
      _repo.deleteProductsInCart(params);
}
