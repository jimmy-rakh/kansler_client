// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posters_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostersDtoImpl _$$PostersDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostersDtoImpl(
      id: (json['id'] as num).toInt(),
      posterType: json['poster_type'] as String?,
      imgMobile: json['img_mobile'] as String?,
      imgWeb: json['img_web'] as String?,
    );

Map<String, dynamic> _$$PostersDtoImplToJson(_$PostersDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_type': instance.posterType,
      'img_mobile': instance.imgMobile,
      'img_web': instance.imgWeb,
    };
