import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../entities/category.entitity.dart';


abstract class CategoriesRepository {
  Future<Either<Failure, List<CategoryEntitity>>> getCategories();

  Future<Either<Failure, List<CategoryEntitity>>> getCategoriesChildren(
    int categoryId,
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      getCategoryProducts(
    int? categoryId,
    int? pageNumber,
    int? pageSize,
  );
}
