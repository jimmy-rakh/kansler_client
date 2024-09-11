part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.checkOut() = _Checkout;
  const factory CheckoutEvent.paymentType(String value) =
  _PaymentType;
  const factory CheckoutEvent.deliveryType(String value) =
  _DeliveryType;
}
