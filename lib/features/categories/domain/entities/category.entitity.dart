import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.entitity.freezed.dart';

@freezed
class CategoryEntitity with _$CategoryEntitity {
  factory CategoryEntitity({
    required int id,
    required String name,
    required bool hasChildren,
    String? imageUrl,
    @Default([]) List<CategoryEntitity> children,
  }) = _CategoryEntitity;
}
