import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';

part 'contract_dto.freezed.dart';
part 'contract_dto.g.dart';

@freezed
class ContractDto with _$ContractDto {
  factory ContractDto({
    required int id,
    required String name,
    required CompanyDto company,
    required OrganizationDto organization,
    ManagerDto? manager,
    ManagerDto? agent,
  }) = _ContractDto;

  factory ContractDto.fromJson(Map<String, dynamic> json) =>
      _$ContractDtoFromJson(json);
}
