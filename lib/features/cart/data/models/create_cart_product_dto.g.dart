// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCartProductDtoImpl _$$CreateCartProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCartProductDtoImpl(
      productId: (json['product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateCartProductDtoImplToJson(
        _$CreateCartProductDtoImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
    };
