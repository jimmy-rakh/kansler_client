part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loadInProgress() = _LoadInProgress;
  const factory CartState.ready({
    required List<CartProduct> products,
    required int price,
    @Default(false) bool isMoreLoading,
  }) = _Ready;
  const factory CartState.error() = _Error;
}
