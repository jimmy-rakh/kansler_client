// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      name: json['name'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phone_number'] as String?,
      companyName: json['company_name'] as String?,
      addressesId: (json['addresses_id'] as num?)?.toInt(),
      requestId: json['request_id'] as String,
      addresses: json['addresses'] == null
          ? null
          : AddressRequest.fromJson(json['addresses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
    _$RegisterRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('company_name', instance.companyName);
  writeNotNull('addresses_id', instance.addressesId);
  val['addresses'] = instance.addresses?.toJson();
  return val;
}
