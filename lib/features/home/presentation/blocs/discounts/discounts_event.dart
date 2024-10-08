part of 'discounts_bloc.dart';

@freezed
class DiscountsEvent with _$DiscountsEvent {
  const factory DiscountsEvent.fetch() = _Fetch;
  const factory DiscountsEvent.addToCart(int id,CheckoutType type) = _AddToCart;
  const factory DiscountsEvent.position(dynamic position) = _Position;
  const factory DiscountsEvent.positionNext(dynamic position) = _PositionNext;
}
