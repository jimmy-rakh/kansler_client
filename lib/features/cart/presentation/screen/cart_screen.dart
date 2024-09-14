import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/cart.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/cart_sum.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/preorders.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/preorders_sum.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/keyboard_escape.dart';
import '../../../checkout/presentation/checkout_screen/bloc/checkout_bloc.dart';
import 'cart_bloc/cart_bloc.dart';

@RoutePage()
class CartScreen extends HookWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    final bloc = context.read<CheckoutBloc>();
    final state = useBlocBuilder(bloc);
    final cartBloc = context.read<CartBloc>();
    final cartState = useBlocBuilder(cartBloc);
    return KeyboardEscape(
      child: Scaffold(
        extendBody: false,
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget(
          preferredSize: context.isSmall
              ? const Size.fromHeight(60)
              : const Size.fromHeight(0),
          showLeading: false,
          child: context.isSmall
              ? Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppTabBar(
                    tabController: tabController,
                    tabList: const ['Корзина', 'Предзаказы'],
                  ),
                )
              : const SizedBox(),
        ),
        body: context.isSmall
            ? TabBarView(
                controller: tabController,
                children: const [
                  CartTabWidget(),
                  PreordersTabWidget(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: context.width * .33,
                      height: context.height,
                      decoration: BoxDecoration(color: context.cardColor),
                      child: Column(
                        children: [
                          Container(
                            width: context.width * .33,
                            height: 70,
                            decoration: BoxDecoration(color: context.cardColor),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: AppTabBar(
                                labelPadding: const EdgeInsets.symmetric(vertical: 12),
                                fillColor: context.background,
                                tabController: tabController,
                                tabList: const ['Корзина', 'Предзаказы'],
                              ),
                            ),
                          ),
                      cartState.whenOrNull(
                        ready: (products, price, isMoreLoading) {
                          if (products.isEmpty) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(24),
                                child: Text("Ваша корзина пуста..."),
                              ),
                            );
                          }

                         return state.whenOrNull(
                            ready: (paymentType, deliveryType,) => Padding(
                              padding: const EdgeInsets.all(12),
                              child: SizedBox(
                                width: context.width * .33,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 6,bottom: 12),
                                      child: Text("Выберите тип оплаты"),
                                    ),
                                    Container(
                                      width: context.width * .33,
                                      decoration: BoxDecoration(
                                          color: context.background,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: const BorderRadius.all(Radius.circular(4))),
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
                                                      width: context.width * .25,
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
                                      padding: EdgeInsets.only(left: 6,bottom: 12),
                                      child: Text("Выберите способ получение"),
                                    ),
                                    Container(
                                      width: context.width * .33,
                                      decoration: BoxDecoration(
                                          color: context.background,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: const BorderRadius.all(Radius.circular(4))),
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
                                              items: <String>["Самовывоз", "Доставка",]
                                                  .map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: SizedBox(
                                                      width: context.width * .25,
                                                      child: Text(
                                                        value,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                bloc.add(CheckoutEvent.deliveryType(value!));
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
                          ) ?? const SizedBox();},) ?? const SizedBox()
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        CartTabWidget(),
                        PreordersTabWidget(),
                      ],
                    ),
                  ),
                ],
              ),
        bottomNavigationBar: SizedBox(
          height: 80,
          width: context.isSmall ? context.width : context.width * .33,
          child: TabBarView(
            controller: tabController,
            children: const [
              CartSumWidget(),
              PreordersSumWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
