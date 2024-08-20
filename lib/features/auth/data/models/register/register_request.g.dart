// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      name: json['name'] as String,
      password: json['password'] as String,
      phoneNumber: json['phone_number'] as String,
      addressesCid: json['addresses_cid'] as String?,
      requestId: json['request_id'] as String,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
    _$RegisterRequestImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'password': instance.password,
    'phone_number': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addresses_cid', instance.addressesCid);
  return val;
}
