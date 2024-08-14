import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../product/domain/entities/product_data.entity.dart';
import '../../domain/repositories/organizations.repositories.dart';
import '../sorces/organizations_remote.dart';

@LazySingleton(as: OrganizationsRepository)
class OrganizationsRepositoryImpl implements OrganizationsRepository {
  final OrganizationsRemoteSource _organizationsRemoteSource;

  OrganizationsRepositoryImpl(this._organizationsRemoteSource);

  @override
  Future<Either<Failure, ({bool hasNext, List<ProductDataEntity> products})>>
      fetch(int page) async {

    final res = await _organizationsRemoteSource.fetch(page);

    return res.fold(
      (l) => Left(l),
      (r) {
        final result = r.products.map((e) => e.toEntity()).toList();

        return Right((hasNext: r.hasNext, products: result));
      },
    );
  }
}
