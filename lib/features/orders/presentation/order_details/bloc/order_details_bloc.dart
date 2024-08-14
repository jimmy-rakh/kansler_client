import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../app/router.dart';
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
    on<_FetchOrder>(_onFetchOrder);

    on<_ToDetails>(_onToDetails);
  }

  FutureOr<void> _onFetchOrder(
      _FetchOrder event, Emitter<OrderDetailsState> emit) async {
    final res = await _ordersRepository.getOrderById(event.id);

    res.fold((l) => null, (r) => emit(OrderDetailsState.ready(r)));
  }

  void _onToDetails(_ToDetails event, Emitter<OrderDetailsState> emit) {
    router.push(OrderOrganizationRoute(
      id: event.id,
      organization: event.organization,
    ));
  }
}
