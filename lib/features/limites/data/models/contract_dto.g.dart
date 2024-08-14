// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractDtoImpl _$$ContractDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContractDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      manager: json['manager'] == null
          ? null
          : ManagerDto.fromJson(json['manager'] as Map<String, dynamic>),
      agent: json['agent'] == null
          ? null
          : ManagerDto.fromJson(json['agent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContractDtoImplToJson(_$ContractDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
      'organization': instance.organization,
      'manager': instance.manager,
      'agent': instance.agent,
    };
