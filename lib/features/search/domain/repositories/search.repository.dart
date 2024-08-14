import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../entities/search.entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      search(SearchEntity request);
}
