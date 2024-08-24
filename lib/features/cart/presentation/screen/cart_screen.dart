import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/keyboard_escape.dart';
import '../../../product/presentation/widgets/product_card.dart';
import 'bloc/cart_bloc.dart';


@RoutePage()
class CartScreen extends HookWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    final state = useBlocBuilder(bloc);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    return KeyboardEscape(
      child: Scaffold(
        extendBody: false,
        resizeToAvoidBottomInset: false,
        appBar: const AppBarWidget(
          preferredSize: Size.fromHeight(60),
          showLeading: false,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Корзина",
            ),
          ),
        ),
        body: state.when(
          loadInProgress: () => const Center(
            child: CupertinoActivityIndicator(),
          ),
          ready: (products, price, isMoreLoading) {
            if (products.isEmpty) {
              return Center(
                child: SvgPicture.asset(AppIllustrations.emptyCart),
              );
            }

            return ListView.separated(
              controller: bloc.scrollController,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard.list(
                  cartProduct: product,
                  fieldController: bloc.quantityControllers[index],
                  onPressed: () {},
                  onCart: () {},
                );
              },
              separatorBuilder: (context, index) => verticalSpace12,
            );
          },
          error: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Произошла ошибка'),
                verticalSpace12,
                AppButton(
                  text: 'Повторить попытку',
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  margin: EdgeInsets.symmetric(horizontal: context.width / 4),
                  borderRadius: 4,
                  borderColor: context.colorScheme.onBackground,
                  size: MainAxisSize.min,
                  onPressed: () => bloc.add(const CartEvent.retry()),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: state.whenOrNull(
          ready: (products, price, isMoreLoading) {
            return products.isEmpty
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.fromLTRB(0,5,0,5),
                    child: ColoredBox(
                      color: context.background,
                      child: AppCard(
                        padding: const EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            state.whenOrNull(
                                  ready: (products, price, isMoreLoading) =>
                                      Text(
                                    '${currencyFormatter.format((price)).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                    style: context.titleMedium,
                                  ),
                                ) ??
                                const SizedBox(),
                            AppButton(
                              text: 'Оформить',
                              textColor: context.onPrimary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              borderRadius: 0,
                              fillColor: context.primary,
                              onPressed: () =>
                                  bloc.add(const CartEvent.toCheckout()),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
