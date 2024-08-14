part of 'discounts_bloc.dart';

@freezed
class DiscountsEvent with _$DiscountsEvent {
  const factory DiscountsEvent.fetch() = _Fetch;
}
