import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/cart_product.dart';
import '../repositories/cart.repository.dart';


@injectable
class GetCartProductsUseCase
    implements UseCase<({bool hasNext, List<CartProduct> products}), int> {
  final CartRepository _repo;

  GetCartProductsUseCase(this._repo);

  @override
  Future<Either<Failure, ({bool hasNext, List<CartProduct> products})>> call(
          int params) =>
      _repo.getCartProducts(params);
}
