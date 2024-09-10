part of 'subcategory_bloc.dart';

@freezed
class SubcategoryEvent with _$SubcategoryEvent {
  const factory SubcategoryEvent.init(CategoryEntitity category) = _Init;
  const factory SubcategoryEvent.loadSubcategories(int categoryId) =
      _LoadSubcategories;
  const factory SubcategoryEvent.loadProducts(int? categoryId) = _LoadProducts;
  const factory SubcategoryEvent.chooseSubcategory(CategoryEntitity category) =
      _ChooseSubcategory;
  const factory SubcategoryEvent.listTypeToggle() = _ListTypeToggle;
  const factory SubcategoryEvent.changeCartState(ProductEntity product) =
      _ChangeCartState;
  const factory SubcategoryEvent.showFilters() = _ShowFilters;
}
