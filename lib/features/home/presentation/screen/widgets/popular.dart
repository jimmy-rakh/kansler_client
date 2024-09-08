import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/title_section.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../blocs/popular/popular_bloc.dart';

class PopularWidget extends HookWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PopularBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      children: [
        TitleSectionWidget(
          name: 'common.popular'.tr(),
          onTap: () {},
        ),
        SizedBox(
          height:  context.height * .25,
          child: state.when(
            loadInProgress: () => Skeletonizer(
              enabled: true,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 5,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.height * .15,
                  product: ProductEntity(id: 0, title: '', barcode: []),
                  onCart: () {},
                ),
              ),
            ),
            success: (products) {
              if (products.isEmpty) {
                return SvgPicture.asset(AppIllustrations.empty);
              }

              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: products.length,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.height * .15,
                  product: products[index],
                  onCart: () =>
                      bloc.add(PopularEvent.changeCartState(products[index])),
                ),
              );
            },
            failure: () => const SizedBox(),
          ),
        )
      ],
    );
  }
}
