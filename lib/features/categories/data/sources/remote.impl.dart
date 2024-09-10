import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/categories/data/sources/remote.dart';
import 'package:kansler/features/categories/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/category_dto.dart';


@Injectable(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  final DioClient _dio;

  CategoriesRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, List<CategoryDto>>> getCategories() async {
    final result = await _dio.getRequest(
      CategoriesRemoteKeys.categories,
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final categories =
            res.results.map((e) => CategoryDto.fromJson(e)).toList();

        return categories;
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, List<CategoryDto>>> getCategoriesChildren(
    int categoryId,
    int? pageNumber,
    int? pageSize,
  ) async {
    final result = await _dio.getRequest(
      '${CategoriesRemoteKeys.categoriesChildren.replaceAll(
        'id',
        '$categoryId',
      )}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final categories =
            res.results.map((e) => CategoryDto.fromJson(e)).toList();

        return categories;
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      getCategoryProducts(
    int? categoryId,
    int? pageNumber,
    int? pageSize,
  ) async {
    final result = await _dio.postRequest(
      '${CategoriesRemoteKeys.categoriesProducts.replaceAll(
        'id',
        '$categoryId',
      )}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',

      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            res.results.map((e) => ProductDto.fromJson(e)).toList();

        return (hasNext: res.next != null, products: products);
      },
    );

    return result;
  }
}
