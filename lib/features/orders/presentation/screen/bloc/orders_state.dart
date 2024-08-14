part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.loadInProgress() = _LoadInProgress;
  const factory OrdersState.ready(
    List<OrdersDto> orders, {
    @Default(false) bool isMoreLoading,
  }) = _Ready;
}
