import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.entity.freezed.dart';

@freezed
class ProductDataEntity with _$ProductDataEntity {
  factory ProductDataEntity({
    required int id,
    required String name,
    String? imageUrl,
  }) = _ProductDataEntity;
}
