import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/search/domain/entities/search.entity.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../repositories/categories.repository.dart';

@injectable
class GetCategoryProducts
    implements
        UseCase<
            ({bool hasNext, List<ProductEntity> products}),
            ({
              SearchEntity request,
              int? categoryId,
              int? pageNumber,
              int? pageSize
            })> {
  final CategoriesRepository _repo;

  GetCategoryProducts(this._repo);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>> call(
          ({
            SearchEntity request,
            int? categoryId,
            int? pageNumber,
            int? pageSize
          }) params) =>
      _repo.getCategoryProducts(
        params.request,
        params.categoryId,
        params.pageNumber,
        params.pageSize,
      );
}
