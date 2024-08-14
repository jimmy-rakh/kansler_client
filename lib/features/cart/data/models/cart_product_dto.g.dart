// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductDtoImpl _$$CartProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$CartProductDtoImpl(
      id: (json['id'] as num).toInt(),
      product: json['product'] == null
          ? null
          : ProductDto.fromJson(json['product'] as Map<String, dynamic>),
      name: json['name'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$CartProductDtoImplToJson(
        _$CartProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
    };
