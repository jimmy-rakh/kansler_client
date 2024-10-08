part of 'prices_bloc.dart';

@freezed
class PricesEvent with _$PricesEvent {
  const factory PricesEvent.addFilter(SearchEntity searchData) = _AddFilter;
  const factory PricesEvent.getLink() = _GetLink;
}
