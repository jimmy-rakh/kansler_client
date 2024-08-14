part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.retry() = _Retry;
  const factory CartEvent.addToCart(int id, int quantity,
      {@Default(false) bool updateDependencies}) = _AddToCart;
  const factory CartEvent.updateProductInCart(int id, int quantity) =
      _UpdateProductInCart;
  const factory CartEvent.deleteProductInCart(int id) = _DeleteProductInCart;
  const factory CartEvent.deleteProductsInCart(List<int> ids) =
      _DeleteProductsInCart;
  const factory CartEvent.getCartPrice() = _GetCartPrice;
  const factory CartEvent.getCartProducts({@Default(false) bool isMore}) = _GetCartProducts;
  const factory CartEvent.toCheckout() = _ToCheckout;
}
