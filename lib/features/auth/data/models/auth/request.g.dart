// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$AuthRequestImplToJson(_$AuthRequestImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'client_type': _$ClientTypeEnumMap[instance.clientType]!,
      'fcm_token': instance.fcmToken,
      'device': instance.device.toJson(),
    };

const _$ClientTypeEnumMap = {
  ClientType.individual: 'individual',
  ClientType.company: 'company',
};
