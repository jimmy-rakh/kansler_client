// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_adress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientAdressDtoImpl _$$ClientAdressDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientAdressDtoImpl(
      id: (json['id'] as num).toInt(),
      cid: json['cid'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ClientAdressDtoImplToJson(
        _$ClientAdressDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cid': instance.cid,
      'name': instance.name,
    };
