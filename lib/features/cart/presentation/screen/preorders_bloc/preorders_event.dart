part of 'preorders_bloc.dart';

@freezed
class PreordersEvent with _$PreordersEvent {
  const factory PreordersEvent.retry() = _Retry;
  const factory PreordersEvent.addToPreorders(int id, int quantity,
      {@Default(false) bool updateDependencies}) = _AddToPreorders;
  const factory PreordersEvent.updateProductInPreorders(int id, int quantity) =
      _UpdateProductInPreorders;
  const factory PreordersEvent.deleteProductInPreorders(int id) =
      _DeleteProductInPreorders;
  const factory PreordersEvent.deleteProductsInPreorders(List<int> ids) =
      _DeleteProductsInPreorders;
  const factory PreordersEvent.getPreordersPrice() = _GetPreordersPrice;
  const factory PreordersEvent.getPreordersProducts(
      {@Default(false) bool isMore}) = _GetPreordersProducts;
  const factory PreordersEvent.toCheckout() = _ToCheckout;
}
