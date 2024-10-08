part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.setData(int id) = _SetData;
  const factory DetailsEvent.fetchProduct(int id) = _FetchProduct;
  const factory DetailsEvent.addToCart() = _AddToCart;
  const factory DetailsEvent.addToPreorder() = _AddToPreorder;
  const factory DetailsEvent.updateView() = _UpdateView;
}
