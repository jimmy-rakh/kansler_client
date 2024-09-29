part of 'order_details_bloc.dart';

@freezed
class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.fetchOrder(int id, CheckoutType type) =
      _FetchOrder;
  const factory OrderDetailsEvent.toDetails(
      int id, OrganizationDto organization, CheckoutType type) = _ToDetails;
  const factory OrderDetailsEvent.fetch(
      {int? id,
      @Default(false) bool isMore,
      @Default(CheckoutType.order) CheckoutType type}) = _FetchData;
  const factory OrderDetailsEvent.updateRating(num rating ,int id) =
  _UpdateRating;
}
