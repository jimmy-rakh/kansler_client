import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_button.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import 'package:kansler/core/enums/enums.dart';
import '../../../../../app/router.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../../checkout/presentation/checkout_screen/bloc/checkout_bloc.dart';

class PreordersSumWidget extends HookWidget {
  const PreordersSumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final bloc = context.read<CheckoutBloc>();
    final preOrderBloc = context.read<PreordersBloc>();
    final state = useBlocBuilder(preOrderBloc);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    return state.whenOrNull(
      ready: (status, products, price, isMoreLoading) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ColoredBox(
            color: context.background,
            child: AppCard(
              width: context.isDesktop ? 370 : context.isSmall
                  ? context.width
                  : context.isTablet
                  ? context.width * .38
                  : context.width * .3,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state.whenOrNull(
                    ready: (status, products, price, isMoreLoading) =>
                    price == 0 || price == null ? const SizedBox() : Text(
                      '${currencyFormatter.format((price)).replaceAll(
                          ".", " ")}  ${'common.sum'.tr()}',
                      style: context.titleMedium,
                    ),
                  ) ??
                      const SizedBox(),
                  products.isEmpty ? AppButton(
                    isActive: false,
                    height: 50,
                    text: 'Оформить Предзаказ',
                    textColor: context.onPrimary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    borderRadius: 0,
                    fillColor: const Color.fromARGB(
                        255, 0, 73, 208).withOpacity(0.3),
                    onPressed: () {},
                  ) : AppButton(
                    height: 50,
                    text: 'Оформить Предзаказ',
                    textColor: context.onPrimary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    borderRadius: 0,
                    fillColor: const Color.fromARGB(
                        255, 0, 73, 208),
                    onPressed: authBloc
                        .state ==
                        const AuthState
                            .authenticated()
                        ? () =>
                    context.isSmall ?
                    preOrderBloc.add(const PreordersEvent.toCheckout()) : bloc
                        .add(const CheckoutEvent.checkOut(CheckoutType
                        .preorder))
                        : () => router
                        .push(
                        const AuthRoute()),
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
