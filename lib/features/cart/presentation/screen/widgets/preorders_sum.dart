import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_button.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';

class PreordersSumWidget extends HookWidget {
  const PreordersSumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    final bloc = context.read<PreordersBloc>();
    final state = useBlocBuilder(bloc);

    return state.products.isEmpty
        ? const SizedBox()
        : Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: ColoredBox(
              color: context.background,
              child: AppCard(
                padding: const EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${currencyFormatter.format((state.price)).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                      style: context.titleMedium,
                    ),
                    AppButton(
                      text: 'Оформить',
                      textColor: context.onPrimary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      borderRadius: 0,
                      fillColor: context.primary,
                      onPressed: () =>
                          bloc.add(const PreordersEvent.toCheckout()),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
