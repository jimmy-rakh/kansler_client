import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import 'package:kansler/features/product/presentation/widgets/product_card.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import 'bloc/checkout_bloc.dart';

@RoutePage()
class CheckoutScreen extends HookWidget implements AutoRouteWrapper {
  const CheckoutScreen({
    super.key,
    this.type = CheckoutType.order,
  });

  final CheckoutType type;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final state = useBlocBuilder(bloc);
    final preordersBloc = context.read<PreordersBloc>();
    final preordersState = useBlocBuilder(preordersBloc);
    final cartBloc = context.read<CartBloc>();
    final cartState = useBlocBuilder(cartBloc);

    return SelectionArea(
      child: Scaffold(
        appBar: AppBarWidget(
          showLeading: true,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton.filled(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(context.cardColor),
              ),
              onPressed: router.popForced,
              icon: const Icon(KazeIcons.arrowLeftOutline),
            ),
          ),
          leadingWidth: 58,
          preferredSize: const Size.fromHeight(60),
          child: const Text('Оформление'),
        ),
        body: ListView(
          children: [
            state.whenOrNull(
                  ready: (paymentType, deliveryType) => Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: SizedBox(
                      width: context.isMobile
                          ? double.maxFinite
                          : context.width * .8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 12, bottom: 12),
                            child: Text("Выберите тип оплаты"),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: context.background,
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    focusColor: context.background,
                                  ),
                                  child: DropdownButton<String>(
                                    dropdownColor: context.cardColor,
                                    underline: const SizedBox(),
                                    autofocus: true,
                                    focusColor: context.background,
                                    elevation: 0,
                                    hint: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Выберите тип оплаты"),
                                    ),
                                    value: paymentType == "byTransfer"
                                        ? "Перечислением" :
                                    paymentType == "byCash"
                                        ? "Наличными" :
                                    paymentType == "byCard"
                                        ? "Картой" : paymentType,
                                    items: <String>[
                                      "Перечислением",
                                      "Наличными",
                                      "Картой"
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: context.width * .7,
                                            child: Text(
                                              value,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      bloc.add(CheckoutEvent.paymentType(value!));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          verticalSpace12,
                          const Padding(
                            padding: EdgeInsets.only(left: 12, bottom: 12),
                            child: Text("Выберите способ получение"),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: context.background,
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    focusColor: context.background,
                                  ),
                                  child: DropdownButton<String>(
                                    dropdownColor: context.cardColor,
                                    underline: const SizedBox(),
                                    autofocus: true,
                                    focusColor: context.background,
                                    elevation: 0,
                                    hint: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Выберите способ получение"),
                                    ),
                                    value: deliveryType == "pickup"
                                        ? "Самовывоз" :
                                    deliveryType == "delivery"
                                        ? "Доставка" : deliveryType,
                                    items: <String>["Самовывоз", "Доставка",].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: context.width * .7,
                                            child: Text(
                                              value,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      bloc.add(
                                          CheckoutEvent.deliveryType(value!));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ) ??
                const SizedBox(
                  child: Text(""),
                ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 50),
              controller: type == CheckoutType.order
                  ? preordersBloc.checkoutController
                  : cartBloc.checkoutController,
              itemBuilder: (context, index) => ProductCard.list(
                cartProduct: type == CheckoutType.order
                    ? cartState.whenOrNull(
                        ready: (products, price, isMoreLoading) =>
                            products[index],
                      )
                    : preordersState.products[index],
                fieldController: TextEditingController(),
                showActions: false,
                onPressed: () {},
                onCart: (type) {},
              ),
              separatorBuilder: (context, index) => verticalSpace12,
              itemCount: type == CheckoutType.order
                  ? cartState.whenOrNull(
                          ready: (products, price, isMoreLoading) =>
                              products.length) ??
                      0
                  : preordersState.products.length,
            ),
          ],
        ),
        bottomNavigationBar: AppCard(
          fillColor: Colors.transparent,
          height: 60,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: AppButton(
            padding: const EdgeInsets.symmetric(vertical: 10),
            fillColor: context.primary,
            text: 'Оформить',
            textStyle: const TextStyle(fontSize: 19),
            textColor: Colors.white,
            borderRadius: 0,
            isActive: state.whenOrNull(
                  ready: (paymentType, deliveryType) =>
                      paymentType != null && deliveryType != null,
                ) ??
                false,
            onPressed: () => bloc.add(CheckoutEvent.checkOut(type)),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<CheckoutBloc>(),
        child: this,
      );
}
