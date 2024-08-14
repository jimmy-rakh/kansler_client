// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDataDtoImpl _$$ProductDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ProductDataDtoImplToJson(
        _$ProductDataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };
