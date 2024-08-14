import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_product.freezed.dart';
part 'update_cart_product.g.dart';

@freezed
class UpdateCartProduct with _$UpdateCartProduct {
  factory UpdateCartProduct({required int quantity}) = _UpdateCartProduct;

  factory UpdateCartProduct.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartProductFromJson(json);
}
