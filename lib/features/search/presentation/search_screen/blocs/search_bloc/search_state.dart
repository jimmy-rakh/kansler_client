part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loadInProgress() = _LoadInProgress;
  const factory SearchState.success({
     List<ProductEntity>? products,
    SearchEntity? filterData,
    @Default(true) bool isList,
    @Default(false) bool isMoreLoading,
    @Default(0) int activePage,
    @Default([]) List<ProductDataEntity> organizations,
  }) = _Success;
  const factory SearchState.notFound() = _NotFound;
  const factory SearchState.error() = _Error;

}
