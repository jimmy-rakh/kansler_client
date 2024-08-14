import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/product/data/sources/remote.dart';
import 'package:kansler/features/product/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../models/product_dto.dart';

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final DioClient _dio;

  ProductRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, ProductDto>> fetchProduct(int id) async {
    final res = await _dio.getRequest<ProductDto>(
      ProductRemoteKeys.product.replaceAll('id', id.toString()),
      converter: (response) =>
          ProductDto.fromJson(response as Map<String, dynamic>),
    );

    return res;
  }
}
