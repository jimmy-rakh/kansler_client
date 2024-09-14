part of 'latest_bloc.dart';

@freezed
class LatestEvent with _$LatestEvent {
  const factory LatestEvent.fetch() = _Fetch;
  const factory LatestEvent.changeCartState(ProductEntity product) =
      _ChangeCartState;
  const factory LatestEvent.cardType() = _CardType;
  const factory LatestEvent.addToCart(int id) = _AddToCart;
}
