import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/router.dart';
import '../../../data/models/orders_dto.dart';
import '../../../domain/repositories/order.repository.dart';

part 'orders_state.dart';
part 'orders_event.dart';
part 'orders_bloc.freezed.dart';

@lazySingleton
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersRepository _ordersRepository;

  OrdersBloc(this._ordersRepository)
      : super(const OrdersState.loadInProgress()) {
    on<_FetchOrders>(_onFetchOrders);
    on<_ToOrder>(_onToOrder);

    add(const OrdersEvent.fetchOrders());

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Ready).isMoreLoading) {
        add(const OrdersEvent.fetchOrders(isMore: true));
      }
    });
  }

  int pageNumber = 1;
  bool hasNext = true;
  final scrollController = ScrollController();

  void _onFetchOrders(_FetchOrders event, Emitter<OrdersState> emit) async {
    if (state is _Ready) {
      emit((state as _Ready).copyWith(isMoreLoading: true));
    }

    if (!event.isMore) pageNumber = 1;

    final res = await _ordersRepository.getOrder(pageNumber);
    if (res.isLeft()) return;

    res.fold((l) => pageNumber = 1, (r) {
      pageNumber++;
      hasNext = r.hasNext;

      if (state is _Ready && event.isMore) {
        List<OrdersDto> orders = [];
        orders.addAll((state as _Ready).orders);
        orders.addAll(r.orders);

        emit((state as _Ready).copyWith(orders: orders, isMoreLoading: false));
        return;
      }
      emit(OrdersState.ready(r.orders));
    });
  }

  void _onToOrder(_ToOrder event, Emitter<OrdersState> emit) async {
    router.push(OrderDetailsRoute(id: event.id));
  }
}
