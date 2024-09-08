import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/app_illustrations.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_button.dart';
import 'package:kansler/features/cart/presentation/screen/cart_bloc/cart_bloc.dart';
import 'package:kansler/features/product/presentation/widgets/product_card.dart';

class CartTabWidget extends HookWidget {
  const CartTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    final state = useBlocBuilder(bloc);

    return state.when(
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
    );
  }
}
