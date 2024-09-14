part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.loadInProgress() = _LoadInProgress;

  const factory OrderDetailsState.ready({
    OrdersDto? order,
    List<CartProduct>? orders,
    bool? isMoreLoading,
    int? id,
  }) = _Ready;

}
