part of 'order_details_bloc.dart';

@freezed
class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.fetchOrder(int id) = _FetchOrder;
  const factory OrderDetailsEvent.toDetails(
      int id, OrganizationDto organization) = _ToDetails;
  const factory OrderDetailsEvent.fetch({
    int? id,
    @Default(false) bool isMore,
  }) = _FetchData;
}
