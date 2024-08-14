import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';


part 'bonus_dto.freezed.dart';
part 'bonus_dto.g.dart';

@freezed
class BonusDto with _$BonusDto {
  factory BonusDto({
    required int id,
    required CompanyDto company,
    required OrganizationDto organization,
    String? totalBonus,
  }) = _BonusDto;

  factory BonusDto.fromJson(Map<String, dynamic> json) =>
      _$BonusDtoFromJson(json);
}
