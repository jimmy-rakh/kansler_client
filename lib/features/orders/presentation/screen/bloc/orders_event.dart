part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.fetchOrders({@Default(false) bool isMore}) =
      _FetchOrders;
  const factory OrdersEvent.fetchPreorders({@Default(false) bool isMore}) =
      _FetchPreorders;

  const factory OrdersEvent.toOrder(int id) = _ToOrder;
}
