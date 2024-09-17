part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.init(SearchEntity searchData) = _Init;

  const factory FilterEvent.chooseCategories() = _ChooseCategories;

  const factory FilterEvent.chooseOrganizations(int id) = _ChooseOrganizations;

  const factory FilterEvent.chooseBrands() = _ChooseBrands;

  const factory FilterEvent.setBaseView() = _SetBaseView;

  const factory FilterEvent.addFilter(SearchEntity searchData) = _AddFilter;

  const factory FilterEvent.orderBy(String orderBy) = _OrderBy;

  const factory FilterEvent.priceFrom(int? priceFrom) = _PriceFrom;

  const factory FilterEvent.priceTo(int? priceTo) = _PriceTo;
}
