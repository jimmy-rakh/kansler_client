import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/error/failure.dart';

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
    if (state is _Ready && event.isMore) {
      emit((state as _Ready).copyWith(isMoreLoading: true));
    }

    late Either<Failure, ({List<CartProduct> cartProducts, bool hasNext})> res;

    switch (event.type) {
      case CheckoutType.order:
        res = await _ordersRepository.getOrderProducts(
            event.id ?? (state as _Ready).id!, page);
        break;
      case CheckoutType.preorder:
        res = await _ordersRepository.getPreorderProducts(
            event.id ?? (state as _Ready).id!, page);
        break;
    }

    res.fold((l) {
      if (state is _Ready) {
        emit((state as _Ready).copyWith(isMoreLoading: false));
      }
    }, (r) {
      page++;
      hasNext = r.hasNext;
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

  _onFetchPreorderData(
      _FetchData event, Emitter<OrderOrganizationState> emit) async {
    late Either<Failure, ({List<CartProduct> cartProducts, bool hasNext})> res;

    switch (event.type) {
      case CheckoutType.order:
        res = await _ordersRepository.getOrderProducts(
            event.id ?? (state as _Ready).id!, page);
        break;
      case CheckoutType.preorder:
        res = await _ordersRepository.getPreorderProducts(
            event.id ?? (state as _Ready).id!, page);
        break;
    }

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
