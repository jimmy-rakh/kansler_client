import 'package:freezed_annotation/freezed_annotation.dart';

part 'detele_cart_products.freezed.dart';
part 'detele_cart_products.g.dart';

@freezed
class DeteleCartProducts with _$DeteleCartProducts {
  factory DeteleCartProducts({required List<int> ids}) = _DeteleCartProducts;

  factory DeteleCartProducts.fromJson(Map<String, dynamic> json) =>
      _$DeteleCartProductsFromJson(json);
}
