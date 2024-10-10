import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../../domain/repositories/products.repository.dart';
import '../models/posters_dto.dart';
import '../models/session_key.dart';
import '../sources/remote.dart';

@Injectable(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductRemoteSource _productRemoteSource;

  ProductsRepositoryImpl(this._productRemoteSource);


  Future<Either<Failure, SessionKey>> session()async {
    final result = await _productRemoteSource.session();
    return result;
  }

  @override
  Future<Either<Failure, List<PostersDto>>> fetchPosters() async {
    final result = await _productRemoteSource.fetchPosters();
    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchHit(int? pageNumber, int? pageSize) async {
    final result = await _productRemoteSource.fetchHit(
      pageNumber,
      pageSize,
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        (
          hasNext: r.hasNext,
          products: r.products.map((e) => e.toEntity()).toList()
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchLatest(int? pageNumber, int? pageSize) async {
    final result = await _productRemoteSource.fetchLatest(
      pageNumber,
      pageSize,
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        (
          hasNext: r.hasNext,
          products: r.products.map((e) => e.toEntity()).toList()
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchPopular(int? pageNumber, int? pageSize) async {
    final result = await _productRemoteSource.fetchPopular(
      pageNumber,
      pageSize,
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        (
          hasNext: r.hasNext,
          products: r.products.map((e) => e.toEntity()).toList()
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, ProductEntity>> fetchProduct(int id) async {
    final result = await _productRemoteSource.fetchProduct(id);

    return result.fold(
      (l) => Left(l),
      (r) => Right(r.toEntity()),
    );
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      fetchDiscount(int? pageNumber, int? pageSize) async {
    final result = await _productRemoteSource.fetchDiscount(
      pageNumber,
      pageSize,
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        (
          hasNext: r.hasNext,
          products: r.products.map((e) => e.toEntity()).toList()
        ),
      ),
    );
  }
}
