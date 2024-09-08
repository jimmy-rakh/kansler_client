// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDtoImpl _$$CompanyDtoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      inn: json['inn'] as String?,
      phoneNumbers: (json['phone_numbers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      companyType: json['company_type'] as String?,
      manager: json['manager'] == null
          ? null
          : ManagerDto.fromJson(json['manager'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyDtoImplToJson(_$CompanyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'inn': instance.inn,
      'phone_numbers': instance.phoneNumbers,
      'company_type': instance.companyType,
      'manager': instance.manager?.toJson(),
    };

_$ManagerDtoImpl _$$ManagerDtoImplFromJson(Map<String, dynamic> json) =>
    _$ManagerDtoImpl(
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ManagerDtoImplToJson(_$ManagerDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'image': instance.image,
    };
