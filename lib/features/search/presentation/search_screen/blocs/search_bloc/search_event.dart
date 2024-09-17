part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({@Default(false) bool isMore, String? title}) = _Search;
  const factory SearchEvent.showFilters() = _ShowFilters;
  const factory SearchEvent.changeListType() = _ChangeListType;
  const factory SearchEvent.changeCartState(ProductEntity product) =
  _ChangeCartState;
  const factory SearchEvent.init(SearchEntity searchData) = _Init;
  const factory SearchEvent.chooseCategories() = _ChooseCategories;
  const factory SearchEvent.chooseOrganizations(int id) = _ChooseOrganizations;
  const factory SearchEvent.chooseBrands() = _ChooseBrands;
  const factory SearchEvent.setBaseView() = _SetBaseView;
  const factory SearchEvent.addFilter(SearchEntity searchData) = _AddFilter;
  const factory SearchEvent.orderBy(String orderBy) =_OrderBy;
  const factory SearchEvent.priceFrom(int? priceFrom) = _PriceFrom;
  const factory SearchEvent.priceTo(int? priceTo) = _PriceTo;
}
