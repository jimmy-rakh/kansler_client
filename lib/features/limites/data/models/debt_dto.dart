// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';
import 'contract_dto.dart';


part 'debt_dto.freezed.dart';
part 'debt_dto.g.dart';

@freezed
class DebtDto with _$DebtDto {
  factory DebtDto({
    required int id,
    required OrganizationDto organization,
    required CompanyDto company,
    required ContractDto contract,
    required String totalDebt,
    @JsonKey(name: 'debt_15_days') required String debt15Days,
    @JsonKey(name: 'debt_16_45_days') required String debt1645Days,
    @JsonKey(name: 'debt_46_60_days') required String debt4660Days,
    @JsonKey(name: 'debt_61_90_days') required String debt6190Days,
    @JsonKey(name: 'debt_91_120_days') required String debt91120Days,
    @JsonKey(name: 'debt_over_120_days') required String debtOver120Days,
  }) = _DebtDto;

  factory DebtDto.fromJson(Map<String, dynamic> json) =>
      _$DebtDtoFromJson(json);
}
