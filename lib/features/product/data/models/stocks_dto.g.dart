// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDataDtoImpl _$$ProductDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataDtoImpl(
      stock: json['stock'] == null
          ? null
          : ProductDataDto.fromJson(json['stock'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      quantityReserve: (json['quantityReserve'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductDataDtoImplToJson(
        _$ProductDataDtoImpl instance) =>
    <String, dynamic>{
      'stock': instance.stock,
      'quantity': instance.quantity,
      'quantityReserve': instance.quantityReserve,
    };
