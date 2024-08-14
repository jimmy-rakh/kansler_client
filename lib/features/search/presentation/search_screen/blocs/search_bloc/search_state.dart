part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loadInProgress() = _LoadInProgress;
  const factory SearchState.success({
    required List<ProductEntity> products,
    SearchEntity? filterData,
    @Default(true) bool isList,
    @Default(false) bool isMoreLoading,
  }) = _Success;
  const factory SearchState.notFound() = _NotFound;
  const factory SearchState.error() = _Error;
}
