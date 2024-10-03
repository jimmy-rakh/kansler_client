import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/app_illustrations.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import 'package:kansler/features/product/presentation/widgets/product_card.dart';

class PreordersTabWidget extends HookWidget {
  const PreordersTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PreordersBloc>();
    final state = useBlocBuilder(bloc);


    return state.when(
      loadInProgress: () => const Center(
        child: CupertinoActivityIndicator(),
      ),
      ready: (status,products, price, isMoreLoading) {
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
              onCart: (type) {},
            );
          },
          separatorBuilder: (context, index) => verticalSpace12,
        );
      },
    );
  }
}
