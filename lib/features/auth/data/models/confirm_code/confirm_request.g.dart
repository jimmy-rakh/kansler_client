// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$ConfirmRequestImplToJson(
    _$ConfirmRequestImpl instance) {
  final val = <String, dynamic>{
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  return val;
}
