import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../cart/presentation/screen/bloc/cart_bloc.dart';
import '../../../../product/presentation/widgets/product_card.dart';

class CheckoutProducts extends HookWidget {
  const CheckoutProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    final state = useBlocBuilder(bloc);

    return state.whenOrNull(ready: (products, price, isMoreLoading) {
          final gruppedProducts =
              groupBy(products, (p0) => p0.product!.organization!.id);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace12,
              for (final key in gruppedProducts.keys)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace16,
                    Text(
                      'Организация: ${gruppedProducts[key]!.first.product!.organization?.name}',
                      style: context.titleSmall,
                    ),
                    verticalSpace12,
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ProductCard.list(
                        cartProduct: gruppedProducts[key]?[index],
                        fieldController: TextEditingController(),
                        showActions: false,
                        onPressed: () {},
                        onCart: () {},
                      ),
                      separatorBuilder: (context, index) => verticalSpace12,
                      itemCount: gruppedProducts[key]?.length ?? 0,
                    )
                  ],
                ),
            ],
          );
        }) ??
        const SizedBox();
  }
}
