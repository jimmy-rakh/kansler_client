import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../app/router.dart';
import '../../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import '../../../../cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import '../../../../home/presentation/blocs/discounts/discounts_bloc.dart';
import '../../../../home/presentation/blocs/hit/hit_bloc.dart';
import '../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../../orders/presentation/screen/bloc/orders_bloc.dart';
import '../../../../orders/presentation/screen/dialogs/success_order_view.dart';
import '../../../../profile/presentation/screen/profile/profile_bloc.dart';
import '../../../data/models/create_order_request.dart';
import '../../../domain/repositories/checkout.repository.dart';

part 'checkout_state.dart';

part 'checkout_event.dart';

part 'checkout_bloc.freezed.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CheckoutRepository _checkoutRepository;

  CheckoutBloc(this._checkoutRepository) : super(const CheckoutState.ready()) {
    on<_Checkout>(_onCheckout);
    on<_PaymentType>(_paymentType);
    on<_DeliveryType>(_deliveryType);
  }

  void _onCheckout(_Checkout event, Emitter<CheckoutState> emit) async {
    final currentState = (state as _Ready);
    final request = CreateOrderRequest(
        paymentType: currentState.paymentType,
        deliveryType: currentState.deliveryType);
    final res = event.type == CheckoutType.order
        ? await _checkoutRepository.createOrder(request)
        : await _checkoutRepository.createPreorder(request);


    final discountBloc =
    BlocProvider.of<DiscountsBloc>(router.navigatorKey.currentContext!);
    final popularBloc =
    BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final hitBloc =
    BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
    BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final profileBloc =
    BlocProvider.of<ProfileBloc>(router.navigatorKey.currentContext!);
    final cartBloc =
    BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!);
    final ordersBloc =
    BlocProvider.of<OrdersBloc>(router.navigatorKey.currentContext!);
    final preorderBloc =
    BlocProvider.of<PreordersBloc>(router.navigatorKey.currentContext!);

    res.fold((l) => null, (r) async {
      await router.navigatorKey.currentContext!
          .showCustomDialog(SuccessOrderView(ordersDto: r));
      discountBloc.add(const DiscountsEvent.fetch());
      popularBloc.add(const PopularEvent.fetch());
      hitBloc.add(const HitEvent.fetch());
      latestBloc.add(const LatestEvent.fetch());
      profileBloc.add(const ProfileEvent.getCompany());
      cartBloc.add(const CartEvent.retry());
      ordersBloc.add(const OrdersEvent.fetchOrders());
      preorderBloc.add(const PreordersEvent.retry());

      router.replace(const MainRoute());
    });
  }

  void _paymentType(_PaymentType event, Emitter<CheckoutState> emit) async {
    emit((state as _Ready).copyWith(paymentType:
    event.paymentType == "Перечисление на расчетный счет"
        ? "byTransfer" :
    event.paymentType == "Оплатить через CLICK"
        ? "byCash" :
    event.paymentType == "Оплатить картой UzCard или HUMO"
        ? "byCard" : event.paymentType));
    print(event.paymentType);
  }

  void _deliveryType(_DeliveryType event, Emitter<CheckoutState> emit) async {
    emit((state as _Ready).copyWith(deliveryType:
    event.deliveryType == "Самовывоз"
        ? "pickup" :
    event.deliveryType == "Доставка"
        ? "delivery" : event.deliveryType));
  }
}
