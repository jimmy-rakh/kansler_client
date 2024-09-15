part of 'hit_bloc.dart';

@freezed
class HitEvent with _$HitEvent {
  const factory HitEvent.fetch() = _Fetch;

  const factory HitEvent.addToCart(int id,CheckoutType type) = _AddToCart;
}
