import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../app/router.dart';
import '../../../../cart/presentation/screen/bloc/cart_bloc.dart';
import '../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../../orders/presentation/screen/bloc/orders_bloc.dart';
import '../../../../orders/presentation/screen/dialogs/success_order_view.dart';
import '../../../../profile/domain/entities/company.entity.dart';
import '../../../domain/repositories/checkout.repository.dart';

part 'checkout_state.dart';
part 'checkout_event.dart';
part 'checkout_bloc.freezed.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CheckoutRepository _checkoutRepository;

  CheckoutBloc(this._checkoutRepository)
      : super(const CheckoutState.initial()) {
    on<_Checkout>(_onCheckout);
  }


  void _onCheckout(_Checkout event, Emitter<CheckoutState> emit) async {

    final res = await _checkoutRepository.createOrder();

    final cartBloc =
        BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!);
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final ordersBloc =
        BlocProvider.of<OrdersBloc>(router.navigatorKey.currentContext!);

    res.fold((l) => null, (r) async {
      await router.navigatorKey.currentContext!
          .showCustomDialog(SuccessOrderView(ordersDto: r));
      cartBloc.add(const CartEvent.retry());
      popularBloc.add(const PopularEvent.fetch());
      latestBloc.add(const LatestEvent.fetch());
      ordersBloc.add(const OrdersEvent.fetchOrders());

      router.replaceAll([const MainRoute()]);
    });
  }
}
