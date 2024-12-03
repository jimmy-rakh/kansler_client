// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorImpl _$$ContractorImplFromJson(Map<String, dynamic> json) =>
    _$ContractorImpl(
      price: (json['price'] as num?)?.toInt(),
      stocks: (json['stocks'] as List<dynamic>?)
          ?.map((e) => StocksDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContractorImplToJson(_$ContractorImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'stocks': instance.stocks?.map((e) => e.toJson()).toList(),
    };
