part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetchCategories() = _FetchCategories;
  const factory CategoriesEvent.fetchCategoryChildren(
      int categoryId, bool isExpanded) = _FetchCategoryChildren;
  const factory CategoriesEvent.selectCategory(int id) = _SelectCategory;
}
