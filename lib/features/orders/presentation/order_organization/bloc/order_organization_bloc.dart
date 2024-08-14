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
  }

  int page = 1;

  _onFetchData(_FetchData event, Emitter<OrderOrganizationState> emit) async {
    final res = await _ordersRepository.getOrderProducts(event.id, page);

    res.fold(
        (l) => null, (r) => emit(OrderOrganizationState.ready(r.cartProducts)));
  }
}
