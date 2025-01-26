// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeRequestImpl _$$SendCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendCodeRequestImpl(
      phoneNumber: json['phone_number'] as String,
      hashedCode: json['hashed_code'] as String?,
    );

Map<String, dynamic> _$$SendCodeRequestImplToJson(
    _$SendCodeRequestImpl instance) {
  final val = <String, dynamic>{
    'phone_number': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hashed_code', instance.hashedCode);
  return val;
}
