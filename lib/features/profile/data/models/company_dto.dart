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
    required List<MainContactDto> mainContacts,
    String? region,
    ManagerDto? manager,
    bool? children,
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
        mainContact: mainContacts.map((e) => e.toEntity).toList(),
        region: region,
        manager: manager?.toEntity,
        children: children,
      );
}

@freezed
class MainContactDto with _$MainContactDto {
  const MainContactDto._();

  const factory MainContactDto({
    String? name,
    String? type,
    String? phone,
  }) = _MainContactDto;

  factory MainContactDto.fromJson(Map<String, dynamic> json) =>
      _$MainContactDtoFromJson(json);

  MainContactEntity get toEntity => MainContactEntity(
        name: name,
        type: type,
        phone: phone,
      );
}

@freezed
class ManagerDto with _$ManagerDto {
  const ManagerDto._();

  const factory ManagerDto({
    String? name,
    String? fullName,
    String? phone,
  }) = _ManagerDto;

  factory ManagerDto.fromJson(Map<String, dynamic> json) =>
      _$ManagerDtoFromJson(json);

  ManagerEntity get toEntity => ManagerEntity(
        name: name,
        fullName: fullName,
        phone: phone,
      );
}
