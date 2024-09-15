part of 'order_organization_bloc.dart';

@freezed
class OrderOrganizationEvent with _$OrderOrganizationEvent {
  const factory OrderOrganizationEvent.fetch({
    int? id,
    @Default(false) bool isMore,
    @Default(CheckoutType.order) CheckoutType type,
  }) = _FetchData;
}
