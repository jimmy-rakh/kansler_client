import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/product.entity.dart';
import '../repositories/product.repository.dart';

@lazySingleton
class FetchProductUseCase implements UseCase<ProductEntity, int> {
  final ProductRepository _repo;

  FetchProductUseCase(this._repo);

  @override
  Future<Either<Failure, ProductEntity>> call(int params) =>
      _repo.fetchProduct(params);
}
