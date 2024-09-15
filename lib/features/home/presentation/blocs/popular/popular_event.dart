part of 'popular_bloc.dart';

@freezed
class PopularEvent with _$PopularEvent {
  const factory PopularEvent.fetch() = _Fetch;
  const factory PopularEvent.addToCart(int id,CheckoutType type) = _AddToCart;
}
