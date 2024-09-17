import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/search/data/sorces/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../../../product/data/models/product_data_dto.dart';
import 'brands_remote.dart';

@LazySingleton(as: BrendsRemoteSource)
class BrandsRemoteSourceImpl implements BrendsRemoteSource {
  final DioClient _dio;

  BrandsRemoteSourceImpl(this._dio);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDataDto> products})>>
      fetch(int page, {int? categoryId}) async {
    final res = await _dio.getRequest(
      "${SearchRemoteKeys.brands}${categoryId == null ? "" : "/$categoryId"}?${NetworkConstants.pageNumber.replaceAll('num', '$page')}&page_size=200",

      converter: (response) {
        final result =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            result.results.map((e) => ProductDataDto.fromJson(e)).toList();

        return (hasNext: result.next != null, products: products);
      },
    );

    return res;
  }
}
