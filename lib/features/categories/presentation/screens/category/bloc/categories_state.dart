part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loadInProgress() = _LoadInProgress;
  const factory CategoriesState.ready(List<CategoryEntitity> categories,
      {CategoryEntitity? selected}) = _Ready;
}
