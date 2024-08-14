part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({@Default(false) bool isMore, String? title}) = _Search;
  const factory SearchEvent.showFilters() = _ShowFilters;
  const factory SearchEvent.changeListType() = _ChangeListType;
  const factory SearchEvent.changeCartState(ProductEntity product) =
  _ChangeCartState;
}
