import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/cart.repository.dart';


@injectable
class UpdateProductInCartUseCase
    implements UseCase<void, ({int productId, int quantity})> {
  final CartRepository _repo;

  UpdateProductInCartUseCase(this._repo);

  @override
  Future<Either<Failure, void>> call(({int productId, int quantity}) params) =>
      _repo.updateProductInCart(params);
}
