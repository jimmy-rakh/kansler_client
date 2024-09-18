import 'package:dartz/dartz.dart';
import 'package:kansler/features/profile/data/models/current_dto.dart';
import '../../../../core/error/failure.dart';
import '../../data/models/address_dto.dart';
import '../entities/company.entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, CurrentDto>> getCompany();

  Future<Either<Failure, ({List<CompanyEntity> companies, bool hasNext})>>
      getChildren();

  Future<Either<Failure,AddressDto>> getAddress();
}
