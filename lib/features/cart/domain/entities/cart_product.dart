import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../product/domain/entities/product.entity.dart';
part 'cart_product.freezed.dart';

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    required int id,
    ProductEntity? product,
    String? name,
    required int quantity,
    required int price,
  }) = _CartProduct;
}
