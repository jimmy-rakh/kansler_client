part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.getOrderProducts() = _GetOrderProducts;
  const factory CheckoutEvent.chooseCompany({CompanyEntity? company}) =
      _ChooseCompany;
  const factory CheckoutEvent.checkOut() = _Checkout;
}
