import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';

part 'limit_dto.freezed.dart';
part 'limit_dto.g.dart';

@freezed
class LimitsDto with _$LimitsDto {
  factory LimitsDto({
    required int id,
    required CompanyDto company,
    required OrganizationDto organization,
    String? totalLimit,
  }) = _LimitsDto;

  factory LimitsDto.fromJson(Map<String, dynamic> json) =>
      _$LimitsDtoFromJson(json);
}
