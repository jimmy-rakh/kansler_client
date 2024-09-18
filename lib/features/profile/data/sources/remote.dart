import 'package:dartz/dartz.dart';
import 'package:kansler/features/profile/data/models/current_dto.dart';
import '../../../../core/error/failure.dart';
import '../models/address_dto.dart';
import '../models/company_dto.dart';

abstract class ProfileRemoteSource {
  Future<Either<Failure, CurrentDto>> fetchCompany();

  Future<Either<Failure, ({List<CompanyDto> companies, bool hasNext})>>
      fetchCompanyChildren();

  Future<Either<Failure, CompanyDto>> fetchCompanyById(int id);

  Future<Either<Failure, AddressDto>> fetchCompanyAddresses();
}
