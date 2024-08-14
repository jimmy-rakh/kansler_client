import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_dto.dart';

abstract class ProductRemoteSource {
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
