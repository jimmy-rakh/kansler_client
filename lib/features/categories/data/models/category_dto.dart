import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/category.entitity.dart';


part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  CategoryDto._();

  factory CategoryDto({
    required int id,
    required String name,
    required bool children,
    String? imageUrl,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  CategoryEntitity toEntity() => CategoryEntitity(
        id: id,
        name: name,
        hasChildren: children,
        imageUrl: imageUrl,
      );
}
