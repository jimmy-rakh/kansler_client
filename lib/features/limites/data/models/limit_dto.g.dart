// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LimitsDtoImpl _$$LimitsDtoImplFromJson(Map<String, dynamic> json) =>
    _$LimitsDtoImpl(
      id: (json['id'] as num).toInt(),
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      totalLimit: json['totalLimit'] as String?,
    );

Map<String, dynamic> _$$LimitsDtoImplToJson(_$LimitsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'organization': instance.organization,
      'totalLimit': instance.totalLimit,
    };
