// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDtoImpl _$$CompanyDtoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      inn: json['inn'] as String?,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      companyType: json['companyType'] as String?,
      mainContacts: (json['mainContacts'] as List<dynamic>)
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
      'fullName': instance.fullName,
      'inn': instance.inn,
      'phoneNumbers': instance.phoneNumbers,
      'companyType': instance.companyType,
      'mainContacts': instance.mainContacts,
      'region': instance.region,
      'manager': instance.manager,
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
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ManagerDtoImplToJson(_$ManagerDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fullName': instance.fullName,
      'phone': instance.phone,
    };
