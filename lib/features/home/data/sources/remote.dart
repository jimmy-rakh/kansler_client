import 'package:dartz/dartz.dart';
import 'package:kansler/features/home/data/models/models.dart';
import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/session_key.dart';

abstract class ProductRemoteSource {
  Future<Either<Failure, SessionKey>> session();

  Future<Either<Failure,List<PostersDto>>> fetchPosters();

  Future<Either<Failure,PostersDto>> fetchPosterById(int id);

  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>> fetchPosterProducts(
      int? pageNumber, int? pageSize,int id);

  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchLatest(
    int? pageNumber,
    int? pageSize,
  );
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>> fetchHit(
    int? pageNumber,
    int? pageSize,
  );
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchPopular(
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchDiscount(
    int? pageNumber,
    int? pageSize,
  );

  Future<Either<Failure, ProductDto>> fetchProduct(int id);
}
