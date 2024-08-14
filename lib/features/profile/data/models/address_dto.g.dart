// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      organization: json['organization'] == null
          ? null
          : OrganizationDto.fromJson(
              json['organization'] as Map<String, dynamic>),
      name: json['name'] as String?,
      phoneNumbers: json['phoneNumbers'] as String?,
      manager: json['manager'] == null
          ? null
          : ManagerDto.fromJson(json['manager'] as Map<String, dynamic>),
      agent: json['agent'] == null
          ? null
          : ManagerDto.fromJson(json['agent'] as Map<String, dynamic>),
      latitude: json['latitude'],
      longitude: json['longitude'],
      region: json['region'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'name': instance.name,
      'phoneNumbers': instance.phoneNumbers,
      'manager': instance.manager,
      'agent': instance.agent,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'region': instance.region,
      'active': instance.active,
    };

_$OrganizationDtoImpl _$$OrganizationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OrganizationDtoImplToJson(
        _$OrganizationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
