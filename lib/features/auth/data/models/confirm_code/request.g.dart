// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmCodeRequestImpl _$$ConfirmCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmCodeRequestImpl(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$ConfirmCodeRequestImplToJson(
        _$ConfirmCodeRequestImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };
