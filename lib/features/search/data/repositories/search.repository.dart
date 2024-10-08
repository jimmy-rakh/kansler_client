import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product.entity.dart';
import '../../domain/entities/search.entity.dart';
import '../../domain/repositories/search.repository.dart';
import '../models/search/request.dart';
import '../sorces/search_remote.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteSource _searchRemoteSource;

  SearchRepositoryImpl(this._searchRemoteSource);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductEntity> products})>>
      search(SearchEntity request) async {
    final data = SearchRequest.fromEntity(request);

    final res = await _searchRemoteSource.search(data, request.pageNumber);

    return res.fold(
      (l) => Left(l),
      (r) {
        final result = r.products.map((e) => e.toEntity()).toList();

        return Right((hasNext: r.hasNext, products: result));
      },
    );
  }

  @override
  Future<Either<Failure, String>> getFile(SearchEntity request) async {
    final data = SearchRequest.fromEntity(request);
    final res = await _searchRemoteSource.getFile(data);

    return res;
  }
}
