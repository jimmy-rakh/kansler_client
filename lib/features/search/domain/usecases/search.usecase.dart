import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../entities/search.entity.dart';
import '../repositories/search.repository.dart';

@lazySingleton
class SearchUseCase
    implements
        UseCase<({bool hasNext, List<ProductEntity> products}), SearchEntity> {
  final SearchRepository _repository;

  SearchUseCase(this._repository);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>> call(
          params) =>
      _repository.search(params);
}
