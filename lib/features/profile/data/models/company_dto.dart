import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/company.entity.dart';

part 'company_dto.freezed.dart';
part 'company_dto.g.dart';

@freezed
class CompanyDto with _$CompanyDto {
  const CompanyDto._();

  const factory CompanyDto({
    required int id,
    String? name,
    String? fullName,
    String? inn,
    List<String?>? phoneNumbers,
    String? companyType,
    ManagerDto? manager,
  }) = _CompanyDto;

  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);

  CompanyEntity get toEntity => CompanyEntity(
        id: id,
        name: name,
        fullName: fullName,
        inn: inn,
        phoneNumbers: phoneNumbers,
        companyType: companyType,
        manager: manager?.toEntity,
      );
}

@freezed
class ManagerDto with _$ManagerDto {
  const ManagerDto._();

  const factory ManagerDto({
    String? name,
    String? fullName,
    String? phone,
    String? image,
  }) = _ManagerDto;

  factory ManagerDto.fromJson(Map<String, dynamic> json) =>
      _$ManagerDtoFromJson(json);

  ManagerEntity get toEntity => ManagerEntity(
        name: name,
        fullName: fullName,
        phone: phone,
      );
}
