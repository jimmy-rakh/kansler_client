import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/home/data/sources/remote.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/posters_dto.dart';
import '../models/session_key.dart';
import 'remote.keys.dart';

@Injectable(as: ProductRemoteSource)
class ProductRemoteSourceImpl implements ProductRemoteSource {
  final DioClient _dio;

  ProductRemoteSourceImpl(this._dio);

  Future<Either<Failure, SessionKey>> session() async {
    final res = await _dio.getRequest<SessionKey>(
      ProductRemoteKeys.sessionKey,
      converter: (response) =>
          SessionKey.fromJson(response),
    );

    return res;
  }

  @override
  Future<Either<Failure,List<PostersDto>>>
  fetchPosters() async {
    final result = await _dio.getRequest(
      ProductRemoteKeys.posters,
      converter: (response) {
        final res =
        PaginationResponse.fromJson(response as Map<String, dynamic>);

        final posters =
        res.results.map((e) => PostersDto.fromJson(e)).toList();

        return posters;
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>> fetchHit(
      int? pageNumber, int? pageSize) async {
    final result = await _dio.getRequest(
      '${ProductRemoteKeys.productsHit}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',
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

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchLatest(int? pageNumber, int? pageSize) async {
    final result = await _dio.getRequest(
      '${ProductRemoteKeys.productsLatest}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',
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

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchPopular(int? pageNumber, int? pageSize) async {
    final result = await _dio.getRequest(
      '${ProductRemoteKeys.productsPopular}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',
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

  @override
  Future<Either<Failure, ProductDto>> fetchProduct(int id) async {
    final result = await _dio.getRequest(
      '${ProductRemoteKeys.productsPopular}/$id',
      converter: (response) {
        final res = ProductDto.fromJson(response as Map<String, dynamic>);

        return res;
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>>
      fetchDiscount(int? pageNumber, int? pageSize) async {
    final result = await _dio.getRequest(
      '${ProductRemoteKeys.productsDiscount}?${pageNumber == null ? '' : '${NetworkConstants.pageNumber.replaceAll('num', '$pageNumber')}&'}${NetworkConstants.pageSize.replaceAll('num', '${pageSize ?? 1}')}',
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
