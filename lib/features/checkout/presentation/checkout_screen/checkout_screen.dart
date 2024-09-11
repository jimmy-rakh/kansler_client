import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/product/presentation/widgets/product_card.dart';
import '../../../../app/di.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import 'bloc/checkout_bloc.dart';

@RoutePage()
class CheckoutScreen extends HookWidget implements AutoRouteWrapper {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final state = useBlocBuilder(bloc);
    final cartBloc = context.read<CartBloc>();
    final cartState = useBlocBuilder(cartBloc);

    return Scaffold(
      appBar: const AppBarWidget(
        preferredSize: Size.fromHeight(60),
        centerTitle: true,
        child: Text('Оформление'),
      ),
      body: ListView(
        children: [
          state.whenOrNull(
            ready: (chosedCompanies,paymentType,deliveryType) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                hint: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Выберите тип оплаты"),
                ),
                value: paymentType,
                items: <String>[ "byTransfer", "buCash", "byCard" ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(value,style: const TextStyle(color: Colors.black),),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  bloc.add(CheckoutEvent.paymentType(value!));
                },
              ),
            ),
          )??
              const SizedBox(child: Text("data"),),

          SizedBox(
            height: context.height * .9,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              controller: cartBloc.checkoutController,
              itemBuilder: (context, index) => ProductCard.list(
                cartProduct: cartState.whenOrNull(
                  ready: (products, price, isMoreLoading) => products[index],
                ),
                fieldController: TextEditingController(),
                showActions: false,
                onPressed: () {},
                onCart: () {},
              ),
              separatorBuilder: (context, index) => verticalSpace12,
              itemCount: cartState.whenOrNull(
                      ready: (products, price, isMoreLoading) => products.length) ??
                  0,
            ),
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
          isActive: true,
          onPressed: () => bloc.add(const CheckoutEvent.checkOut()),
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
