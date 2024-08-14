// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientDataResponseImpl _$$ClientDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientDataResponseImpl(
      inn: json['inn'] as String?,
      fullName: json['fullName'] as String?,
      name: json['name'] as String?,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ClientDataResponseImplToJson(
        _$ClientDataResponseImpl instance) =>
    <String, dynamic>{
      'inn': instance.inn,
      'fullName': instance.fullName,
      'name': instance.name,
      'phoneNumbers': instance.phoneNumbers,
    };
