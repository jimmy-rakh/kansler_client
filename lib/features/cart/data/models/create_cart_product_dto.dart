import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cart_product_dto.freezed.dart';
part 'create_cart_product_dto.g.dart';

@freezed
class CreateCartProductDto with _$CreateCartProductDto {
  factory CreateCartProductDto({
    required int productId,
    required int quantity,
  }) = _CreateCartProductDto;

  factory CreateCartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCartProductDtoFromJson(json);
}
