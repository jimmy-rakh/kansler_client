import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_dto.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../../data/models/posters_dto.dart';
import '../../data/models/session_key.dart';

abstract class ProductsRepository {
  Future<Either<Failure, SessionKey>> session();

  Future<Either<Failure, List<PostersDto>>> fetchPosters();

  Future<Either<Failure, PostersDto>> fetchPosterById(int id);

  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>> fetchPosterProducts(
      {int id,int? pageNumber, int? pageSize,});

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
