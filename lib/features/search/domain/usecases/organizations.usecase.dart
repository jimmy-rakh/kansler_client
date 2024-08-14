import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product_data.entity.dart';
import '../repositories/organizations.repositories.dart';

@lazySingleton
class OrganizationsUseCase
    implements
        UseCase<({bool hasNext, List<ProductDataEntity> products}), int> {
  final OrganizationsRepository _repository;

  OrganizationsUseCase(this._repository);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDataEntity> products})>>
      call(params) => _repository.fetch(params);
}
