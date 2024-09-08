import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/profile/data/models/company_dto.dart';

part 'current_dto.freezed.dart';
part 'current_dto.g.dart';

@freezed
class CurrentDto with _$CurrentDto {
  factory CurrentDto({
    required int id,
    String? cid,
    required String username,
    CompanyDto? company,
    String? name,
    String? latitude,
    String? longitude,
    String? phoneNumber,
  }) = _CurrentDto;

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);
}
