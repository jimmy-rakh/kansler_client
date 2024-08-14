import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';


abstract class ProductsRepository {
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchLatest(
    int? pageNumber,
    int? pageSize,
  );
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchHit(
    int? pageNumber,
    int? pageSize,
  );
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchPopular(
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchDiscount(
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ProductEntity>> fetchProduct(int id);
}
