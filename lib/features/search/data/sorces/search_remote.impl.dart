import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/search/data/sorces/remote.keys.dart';
import 'package:kansler/features/search/data/sorces/search_remote.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/search/request.dart';

@LazySingleton(as: SearchRemoteSource)
class SearchRemoteSourceImpl implements SearchRemoteSource {
  final DioClient _dio;

  SearchRemoteSourceImpl(this._dio);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>> search(
      SearchRequest request, int page) async {
    final res = _dio.postRequest(
      '${SearchRemoteKeys.search}?page=$page',
      data: request.toJson(),
      converter: (response) {
        final result =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            result.results.map((e) => ProductDto.fromJson(e)).toList();

        return (hasNext: result.next != null, products: products);
      },
    );
    return res;
  }
}
