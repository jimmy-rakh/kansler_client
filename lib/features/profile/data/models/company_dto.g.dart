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
      mainContacts: (json['main_contacts'] as List<dynamic>)
          .map((e) => MainContactDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      region: json['region'] as String?,
      manager: json['manager'] == null
          ? null
          : ManagerDto.fromJson(json['manager'] as Map<String, dynamic>),
      children: json['children'] as bool?,
    );

Map<String, dynamic> _$$CompanyDtoImplToJson(_$CompanyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'inn': instance.inn,
      'phone_numbers': instance.phoneNumbers,
      'company_type': instance.companyType,
      'main_contacts': instance.mainContacts.map((e) => e.toJson()).toList(),
      'region': instance.region,
      'manager': instance.manager?.toJson(),
      'children': instance.children,
    };

_$MainContactDtoImpl _$$MainContactDtoImplFromJson(Map<String, dynamic> json) =>
    _$MainContactDtoImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$MainContactDtoImplToJson(
        _$MainContactDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'phone': instance.phone,
    };

_$ManagerDtoImpl _$$ManagerDtoImplFromJson(Map<String, dynamic> json) =>
    _$ManagerDtoImpl(
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ManagerDtoImplToJson(_$ManagerDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'phone': instance.phone,
    };
