part of 'subcategory_bloc.dart';

@freezed
class SubcategoryState with _$SubcategoryState {
  const factory SubcategoryState.loadInProgress() = _LoadInProgress;
  const factory SubcategoryState.ready({
    required CategoryEntitity category,
    @Default([]) List<CategoryEntitity> categories,
    @Default([]) List<ProductEntity> products,
    CategoryEntitity? selectedCategory,
    @Default(true) bool isCategoriesLoading,
    @Default(true) bool isProductsLoading,
    @Default(true) bool isList,
    @Default(false) bool isPaginationLoading,
  }) = _Ready;
}
