// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentDtoImpl _$$CurrentDtoImplFromJson(Map<String, dynamic> json) =>
    _$CurrentDtoImpl(
      id: (json['id'] as num).toInt(),
      cid: json['cid'] as String?,
      username: json['username'] as String,
      company: json['company'] == null
          ? null
          : CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      name: json['name'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$CurrentDtoImplToJson(_$CurrentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cid': instance.cid,
      'username': instance.username,
      'company': instance.company?.toJson(),
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone_number': instance.phoneNumber,
    };
