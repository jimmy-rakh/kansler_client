// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'clientType': _$ClientTypeEnumMap[instance.clientType]!,
      'device': instance.device,
    };

const _$ClientTypeEnumMap = {
  ClientType.individual: 'individual',
  ClientType.company: 'company',
};
