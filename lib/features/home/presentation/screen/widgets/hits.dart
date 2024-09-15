import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/title_section.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../blocs/hit/hit_bloc.dart';

class HitsWidget extends HookWidget {
  const HitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HitBloc>();
    final discount = context.read<DiscountsBloc>();
    final popular = context.read<PopularBloc>();
    final latest = context.read<LatestBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      children: [
        TitleSectionWidget(
          name: 'common.day_hits'.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: 310,
          child: state.when(
            loadInProgress: () => Skeletonizer(
              enabled: true,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 10,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.isMobile ? context.height * .2 : 200,
                  width: context.isMobile ? context.width * .44 : 200,
                  product: ProductEntity(id: 0, title: '', barcode: []),
                  onCart: (type) {},
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
                cacheExtent: 10,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.isMobile ? context.height * .2 : 200,
                  width: context.isMobile ? context.width * .44 : 200,
                  product: products[index],
                  onCart: (type) {
                    discount.add(DiscountsEvent.addToCart(products[index].id,type));
                    bloc.add(HitEvent.addToCart(products[index].id,type));
                    popular.add(PopularEvent.addToCart(products[index].id,type));
                    latest.add(LatestEvent.addToCart(products[index].id,type));
                  },
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
