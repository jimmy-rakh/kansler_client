import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';
import 'contract_dto.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
class PaymentDto with _$PaymentDto {
  factory PaymentDto({
    required int id,
    required OrganizationDto organization,
    required CompanyDto company,
    required ContractDto contract,
    required String number,
    required String date,
    required String amount,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
