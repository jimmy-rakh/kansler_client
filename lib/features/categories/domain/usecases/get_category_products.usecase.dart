import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../repositories/categories.repository.dart';

@injectable
class GetCategoryProducts
    implements
        UseCase<({bool hasNext, List<ProductEntity> products}),
            ({int? categoryId, int? pageNumber, int? pageSize})> {
  final CategoriesRepository _repo;

  GetCategoryProducts(this._repo);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>> call(
          ({int? categoryId, int? pageNumber, int? pageSize}) params) =>
      _repo.getCategoryProducts(
        params.categoryId,
        params.pageNumber,
        params.pageSize,
      );
}
