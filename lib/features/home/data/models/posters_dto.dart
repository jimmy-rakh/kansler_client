import 'package:freezed_annotation/freezed_annotation.dart';

part 'posters_dto.freezed.dart';

part 'posters_dto.g.dart';

@freezed
class PostersDto with _$PostersDto {
  factory PostersDto({
    required int id,
    String? posterType,
    String? imgMobile,
    String? imgWeb,
  }) = _PostersDto;

  factory PostersDto.fromJson(Map<String, dynamic> json) =>
      _$PostersDtoFromJson(json);
}
