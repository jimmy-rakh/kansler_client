import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_button.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/cart/presentation/screen/cart_bloc/cart_bloc.dart';

import '../../../../checkout/presentation/checkout_screen/bloc/checkout_bloc.dart';

class CartSumWidget extends HookWidget {
  const CartSumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final cartBloc = context.read<CartBloc>();
    final cartState = useBlocBuilder(cartBloc);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    return cartState.whenOrNull(
          ready: (products, price, isMoreLoading) {
            return products.isEmpty
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: ColoredBox(
                      color: context.background,
                      child: AppCard(
                        width: context.isSmall ? context.width : context.width * .33,
                        padding: const EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            cartState.whenOrNull(
                                  ready: (products, price, isMoreLoading) =>
                                      Text(
                                    '${currencyFormatter.format((price)).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                    style: context.titleMedium,
                                  ),
                                ) ??
                                const SizedBox(),
                            AppButton(
                              text: 'Оформить Заказ',
                              textColor: context.onPrimary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              borderRadius: 0,
                              fillColor: context.primary,
                              onPressed: () => context.isSmall ?
                                  cartBloc.add(const CartEvent.toCheckout()) : bloc.add( CheckoutEvent.checkOut(CheckoutType.cart)),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
          },
        ) ??
        const SizedBox();
  }
}
