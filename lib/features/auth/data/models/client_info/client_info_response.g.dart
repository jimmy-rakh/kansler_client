// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientInfoResponseImpl _$$ClientInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientInfoResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      phoneNumbers: (json['phone_numbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parent: json['parent'] == null
          ? null
          : ClientCidData.fromJson(json['parent'] as Map<String, dynamic>),
      region: json['region'] as String?,
      deliveryaddressSet: (json['deliveryaddress_set'] as List<dynamic>?)
          ?.map((e) => ClientAdressDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientInfoResponseImplToJson(
        _$ClientInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_numbers': instance.phoneNumbers,
      'parent': instance.parent?.toJson(),
      'region': instance.region,
      'deliveryaddress_set':
          instance.deliveryaddressSet?.map((e) => e.toJson()).toList(),
    };
