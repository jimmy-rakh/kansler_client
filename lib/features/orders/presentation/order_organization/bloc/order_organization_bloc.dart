import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../cart/domain/entities/cart_product.dart';
import '../../../domain/repositories/order.repository.dart';

part 'order_organization_state.dart';
part 'order_organization_event.dart';
part 'order_organization_bloc.freezed.dart';

@injectable
class OrderOrganizationBloc
    extends Bloc<OrderOrganizationEvent, OrderOrganizationState> {
  final OrdersRepository _ordersRepository;
  OrderOrganizationBloc(this._ordersRepository)
      : super(const OrderOrganizationState.loadInProgress()) {
    on<_FetchData>(_onFetchData);

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !((state as _Ready).isMoreLoading ?? false)) {
        add(const OrderOrganizationEvent.fetch(isMore: true));
      }
    });
  }

  int page = 1;
  bool hasNext = true;
  final scrollController = ScrollController();

  _onFetchData(_FetchData event, Emitter<OrderOrganizationState> emit) async {
    final res = await _ordersRepository.getOrderProducts(
        event.id ?? (state as _Ready).id!, page);

    res.fold((l) => null, (r) {
      if (state is! _Ready) {
        emit(OrderOrganizationState.ready(r.cartProducts, id: event.id));
        return;
      }

      emit(
        (state as _Ready).copyWith(
          orders: [
            ...(state as _Ready).orders,
            ...r.cartProducts,
          ],
          isMoreLoading: false,
        ),
      );
    });
  }
}
