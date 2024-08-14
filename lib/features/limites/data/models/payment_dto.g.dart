// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDtoImpl _$$PaymentDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDtoImpl(
      id: (json['id'] as num).toInt(),
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      contract: ContractDto.fromJson(json['contract'] as Map<String, dynamic>),
      number: json['number'] as String,
      date: json['date'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$PaymentDtoImplToJson(_$PaymentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'company': instance.company,
      'contract': instance.contract,
      'number': instance.number,
      'date': instance.date,
      'amount': instance.amount,
    };
