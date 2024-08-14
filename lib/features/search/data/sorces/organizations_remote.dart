import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_data_dto.dart';

abstract class OrganizationsRemoteSource {
  Future<Either<Failure, ({bool hasNext, List<ProductDataDto> products})>>
      fetch(int page);
}
