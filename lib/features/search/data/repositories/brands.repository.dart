import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product_data.entity.dart';
import '../../domain/repositories/brands.repository.dart';
import '../sorces/brands_remote.dart';


@LazySingleton(as: BrandsRepository)
class BrandsRepositoryImpl implements BrandsRepository {
  final BrendsRemoteSource _brendsRemoteSource;

  BrandsRepositoryImpl(this._brendsRemoteSource);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDataEntity> products})>>
      fetch(int page, {int? categoryId}) async {
    final res = await _brendsRemoteSource.fetch(
      page,
      categoryId: categoryId,
    );

    return res.fold(
      (l) => Left(l),
      (r) {
        final result = r.products.map((e) => e.toEntity()).toList();

        return Right((hasNext: r.hasNext, products: result));
      },
    );
  }
}
