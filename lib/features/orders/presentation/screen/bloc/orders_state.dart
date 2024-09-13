part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.loadInProgress() = _LoadInProgress;
  const factory OrdersState.ready({
    @Default(false) bool isMoreLoading,
    @Default([]) List<OrdersDto> orders,
    @Default([]) List<OrdersDto> preorders,
  }) = _Ready;
}
