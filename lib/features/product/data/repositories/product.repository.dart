import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/product.entity.dart';
import '../../domain/repositories/product.repository.dart';
import '../sources/remote.dart';


@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource _remote;

  ProductRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, ProductEntity>> fetchProduct(int id) async {
    final res = await _remote.fetchProduct(id);

    return res.fold((l) => Left(l), (r) => Right(r.toEntity()));
  }
}
