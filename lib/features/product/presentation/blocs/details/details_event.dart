part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.setData(ProductEntity product) = _SetData;
  const factory DetailsEvent.fetchProduct(int id) = _FetchProduct;
  const factory DetailsEvent.addToCart() = _AddToCart;
  const factory DetailsEvent.updateView() = _UpdateView;
}
