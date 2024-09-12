part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.ready({
    String? paymentType,
    String? deliveryType,
  }) = _Ready;
}
