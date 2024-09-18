import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/profile/data/models/current_dto.dart';
import 'package:kansler/features/profile/data/sources/remote.dart';
import 'package:kansler/features/profile/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../models/address_dto.dart';
import '../models/company_dto.dart';


@LazySingleton(as: ProfileRemoteSource)
class ProductRemoteSourceImpl implements ProfileRemoteSource {
  final DioClient _dio;

  ProductRemoteSourceImpl(this._dio);

  @override
  Future<Either<Failure, CurrentDto>> fetchCompany() async {
    final res = await _dio.getRequest(
      ProfileRemoteKeys.clientsApi,
      converter: (response) {
        final res = CurrentDto.fromJson(response as Map<String, dynamic>);

        return res;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, AddressDto>> fetchCompanyAddresses() async {
    final res = await _dio.getRequest(
        ProfileRemoteKeys.companyAddresses,
        converter: (response) {
    final res =
    AddressDto.fromJson(response as Map<String, dynamic>);
    return res;
    },
    );

    return res;
  }

  @override
  Future<Either<Failure, CompanyDto>> fetchCompanyById(int id) async {
    final res = await _dio.getRequest(
      ProfileRemoteKeys.mainCompany,
      converter: (response) {
        final res = CompanyDto.fromJson(response as Map<String, dynamic>);

        return res;
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ({List<CompanyDto> companies, bool hasNext})>>
  fetchCompanyChildren() async {
    final res = await _dio.getRequest(
      ProfileRemoteKeys.childCompanies,
      converter: (response) {
        final res =
        PaginationResponse.fromJson(response as Map<String, dynamic>);

        final companies = res.results
            .map(
              (e) => CompanyDto.fromJson(e),
        )
            .toList();

        return (hasNext: res.next != null, companies: companies);
      },
    );

    return res;
  }
}
