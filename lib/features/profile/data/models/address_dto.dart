import 'package:freezed_annotation/freezed_annotation.dart';
import 'company_dto.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const AddressDto._();

  const factory AddressDto({
    int? id,
    OrganizationDto? organization,
    String? name,
    String? phoneNumbers,
    ManagerDto? manager,
    ManagerDto? agent,
    dynamic latitude,
    dynamic longitude,
    String? region,
    bool? active,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
class OrganizationDto with _$OrganizationDto {
  const OrganizationDto._();

  const factory OrganizationDto({
    int? id,
    String? name,
  }) = _OrganizationDto;

  factory OrganizationDto.fromJson(Map<String, dynamic> json) =>
      _$OrganizationDtoFromJson(json);
}
