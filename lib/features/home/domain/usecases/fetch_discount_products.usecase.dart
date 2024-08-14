import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../repositories/products.repository.dart';


@injectable
class FetchDiscountProductUseCase
    implements
        UseCase<({bool hasNext, List<ProductEntity> products}),
            ({int? pageNumber, int? pageSize})> {
  final ProductsRepository _repo;

  FetchDiscountProductUseCase(this._repo);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>> call(
          ({int? pageNumber, int? pageSize}) params) =>
      _repo.fetchDiscount(params.pageNumber, params.pageSize);
}
