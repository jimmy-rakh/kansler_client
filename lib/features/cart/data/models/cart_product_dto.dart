import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/data/models/product_dto.dart';
import '../../domain/entities/cart_product.dart';

part 'cart_product_dto.freezed.dart';
part 'cart_product_dto.g.dart';

@freezed
class CartProductDto with _$CartProductDto {
  CartProductDto._();

  factory CartProductDto({
    required int id,
    ProductDto? product,
    String? name,
    required int quantity,
    required int price,
  }) = _CartProductDto;

  factory CartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CartProductDtoFromJson(json);

  CartProduct toEntity() => CartProduct(
        id: id,
        product: product?.toEntity(),
        name: name,
        quantity: quantity,
        price: price,
      );
}
