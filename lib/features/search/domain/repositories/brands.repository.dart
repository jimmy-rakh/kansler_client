import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product_data.entity.dart';

abstract class BrandsRepository {
  Future<Either<Failure, ({bool hasNext, List<ProductDataEntity> products})>>
      fetch(int page, {int? organizationId});
}
