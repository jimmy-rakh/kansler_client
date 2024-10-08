import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../product/data/models/product_dto.dart';
import '../models/search/request.dart';

abstract class SearchRemoteSource {
  Future<Either<Failure, ({bool hasNext, List<ProductDto> products})>> search(
      SearchRequest request, int page);

  Future<Either<Failure, String>> getFile(SearchRequest request);
}
