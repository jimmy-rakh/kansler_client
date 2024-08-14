// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DebtDtoImpl _$$DebtDtoImplFromJson(Map<String, dynamic> json) =>
    _$DebtDtoImpl(
      id: (json['id'] as num).toInt(),
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      contract: ContractDto.fromJson(json['contract'] as Map<String, dynamic>),
      totalDebt: json['totalDebt'] as String,
      debt15Days: json['debt_15_days'] as String,
      debt1645Days: json['debt_16_45_days'] as String,
      debt4660Days: json['debt_46_60_days'] as String,
      debt6190Days: json['debt_61_90_days'] as String,
      debt91120Days: json['debt_91_120_days'] as String,
      debtOver120Days: json['debt_over_120_days'] as String,
    );

Map<String, dynamic> _$$DebtDtoImplToJson(_$DebtDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'company': instance.company,
      'contract': instance.contract,
      'totalDebt': instance.totalDebt,
      'debt_15_days': instance.debt15Days,
      'debt_16_45_days': instance.debt1645Days,
      'debt_46_60_days': instance.debt4660Days,
      'debt_61_90_days': instance.debt6190Days,
      'debt_91_120_days': instance.debt91120Days,
      'debt_over_120_days': instance.debtOver120Days,
    };
