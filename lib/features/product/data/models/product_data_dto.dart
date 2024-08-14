import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/product_data.entity.dart';

part 'product_data_dto.freezed.dart';
part 'product_data_dto.g.dart';

@freezed
class ProductDataDto with _$ProductDataDto {
  ProductDataDto._();

  factory ProductDataDto({
    required int id,
    required String name,
    String? imageUrl,
  }) = _ProductDataDto;

  factory ProductDataDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDataDtoFromJson(json);

  ProductDataEntity toEntity() => ProductDataEntity(id: id, name: name);
}
