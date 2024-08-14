import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../data/models/address_dto.dart';
import '../entities/company.entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, CompanyEntity>> getCompany();

  Future<Either<Failure, ({List<CompanyEntity> companies, bool hasNext})>>
      getChildren();

  Future<Either<Failure, ({List<AddressDto> addresses, bool hasNext})>>
      getAddress(int id);
}
