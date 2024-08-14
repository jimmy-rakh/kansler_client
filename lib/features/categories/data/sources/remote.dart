import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/category_dto.dart';


abstract class CategoriesRemoteDataSource {
  Future<Either<Failure, List<CategoryDto>>> getCategories();

  Future<Either<Failure, List<CategoryDto>>> getCategoriesChildren(
    int categoryId,
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      getCategoryProducts(
    int? categoryId,
    int? pageNumber,
    int? pageSize,
  );
}
