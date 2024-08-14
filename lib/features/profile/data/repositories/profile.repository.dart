import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/company.entity.dart';
import '../../domain/repositories/profile.repository.dart';
import '../models/address_dto.dart';
import '../sources/remote.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteSource _profileRemoteSource;

  ProfileRepositoryImpl(this._profileRemoteSource);
  @override
  Future<Either<Failure, CompanyEntity>> getCompany() async {
    final res = await _profileRemoteSource.fetchCompany();

    return res.fold((l) => Left(l), (r) => Right(r.toEntity));
  }

  @override
  Future<Either<Failure, ({List<CompanyEntity> companies, bool hasNext})>>
      getChildren() async {
    final res = await _profileRemoteSource.fetchCompanyChildren();

    return res.fold(
        (l) => Left(l),
        (r) => Right((
              hasNext: r.hasNext,
              companies: r.companies.map((e) => e.toEntity).toList()
            )));
  }

  @override
  Future<Either<Failure, ({List<AddressDto> addresses, bool hasNext})>>
      getAddress(int id) async {
    final res = await _profileRemoteSource.fetchCompanyAddresses(id);

    return res.fold((l) => Left(l),
        (r) => Right((hasNext: r.hasNext, addresses: r.addresses)));
  }
}
