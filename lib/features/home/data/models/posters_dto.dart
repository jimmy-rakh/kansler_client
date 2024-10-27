import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/home/data/models/poster_notification.dart';

part 'posters_dto.freezed.dart';

part 'posters_dto.g.dart';

@freezed
class PostersDto with _$PostersDto {
  factory PostersDto({
    required int id,
    String? posterType,
    String? imgMobile,
    String? imgWeb,
    Notification? notification,
  }) = _PostersDto;

  factory PostersDto.fromJson(Map<String, dynamic> json) =>
      _$PostersDtoFromJson(json);
}
