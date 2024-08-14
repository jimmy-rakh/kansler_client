// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BonusDtoImpl _$$BonusDtoImplFromJson(Map<String, dynamic> json) =>
    _$BonusDtoImpl(
      id: (json['id'] as num).toInt(),
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      totalBonus: json['totalBonus'] as String?,
    );

Map<String, dynamic> _$$BonusDtoImplToJson(_$BonusDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'organization': instance.organization,
      'totalBonus': instance.totalBonus,
    };
