import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../app/router.dart';
import '../../../../cart/domain/entities/cart_product.dart';
import '../../../../profile/data/models/address_dto.dart';
import '../../../data/models/orders_dto.dart';
import '../../../domain/repositories/order.repository.dart';

part 'order_details_state.dart';
part 'order_details_event.dart';
part 'order_details_bloc.freezed.dart';

@injectable
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final OrdersRepository _ordersRepository;

  OrderDetailsBloc(this._ordersRepository)
      : super(const OrderDetailsState.loadInProgress()) {
    on<_FetchData>(_onFetchData);

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !((state as _Ready).isMoreLoading ?? false)) {
        add(const OrderDetailsEvent.fetch(isMore: true));
      }
    });
    on<_FetchOrder>(_onFetchOrder);

    on<_ToDetails>(_onToDetails);
  }

  int page = 1;
  bool hasNext = true;
  final scrollController = ScrollController();

  _onFetchData(_FetchData event, Emitter<OrderDetailsState> emit) async {
    final res = await _ordersRepository.getOrderProducts(
        event.id ?? (state as _Ready).id!, page);

    res.fold((l) => null, (r) {
      if (state is! _Ready) {
        emit(OrderDetailsState.ready(orders:r.cartProducts, id: event.id));
        return;
      }

      emit(
        (state as _Ready).copyWith(
          orders: [
            ...?(state as _Ready).orders,
            ...r.cartProducts,
          ],
          isMoreLoading: false,
        ),
      );
    });
  }

  FutureOr<void> _onFetchOrder(
      _FetchOrder event, Emitter<OrderDetailsState> emit) async {
    final res = await _ordersRepository.getOrderById(event.id);

    res.fold((l) => null, (r) => emit(OrderDetailsState.ready(order: r,)));
  }

  void _onToDetails(_ToDetails event, Emitter<OrderDetailsState> emit) {
    router.push(OrderOrganizationRoute(
      id: event.id,
      organization: event.organization,
    ));
  }
}
