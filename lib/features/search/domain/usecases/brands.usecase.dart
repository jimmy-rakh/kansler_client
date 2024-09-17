import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product_data.entity.dart';
import '../repositories/brands.repository.dart';

class BrandsParams {
  final int page;
  final int? categoryId;

  BrandsParams(this.page, this.categoryId);
}

@lazySingleton
class BrandsUseCase
    implements
        UseCase<({bool hasNext, List<ProductDataEntity> products}),
            BrandsParams> {
  final BrandsRepository _repository;

  BrandsUseCase(this._repository);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDataEntity> products})>>
      call(BrandsParams params) => _repository.fetch(
            params.page,
            categoryId: params.categoryId,
          );
}
