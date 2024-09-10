import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/search/data/models/search/request.dart';
import 'package:kansler/features/search/domain/entities/search.entity.dart';
import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../../domain/entities/category.entitity.dart';
import '../../domain/repositories/categories.repository.dart';
import '../sources/remote.dart';

@Injectable(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource _remoteDataSource;

  CategoriesRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<CategoryEntitity>>> getCategories() async {
    final result = await _remoteDataSource.getCategories();

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        r.map((e) => e.toEntity()).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<CategoryEntitity>>> getCategoriesChildren(
    int categoryId,
    int? pageNumber,
    int? pageSize,
  ) async {
    final result = await _remoteDataSource.getCategoriesChildren(
      categoryId,
      pageNumber,
      pageSize,
    );

    return result.fold(
      (l) => Left(l),
      (r) => Right(
        r.map((e) => e.toEntity()).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      getCategoryProducts(
    SearchEntity request,
    int? categoryId,
    int? pageNumber,
    int? pageSize,
  ) async {
    final data = SearchRequest.fromEntity(request);
    final result = await _remoteDataSource.getCategoryProducts(
      data,
      categoryId,
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
