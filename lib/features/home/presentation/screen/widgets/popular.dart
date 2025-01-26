import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/hit/hit_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/title_section.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../blocs/popular/popular_bloc.dart';

class PopularWidget extends HookWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PopularBloc>();
    final latest = context.read<LatestBloc>();
    final hit = context.read<HitBloc>();
    final discount = context.read<DiscountsBloc>();
    final state = useBlocBuilder(bloc);
    final currentWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        TitleSectionWidget(
          name: 'common.popular'.tr(),
          onTap: () {},
        ),
        Stack(
          children: [
            SizedBox(
              height: context.height * .43,
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
                    physics: context.isSmall ? null : const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: bloc.controllerProducts,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: products.length,
                    cacheExtent: 10,
                    separatorBuilder: (context, index) => horizontalSpace12,
                    itemBuilder: (context, index) => ProductCard.grid(
                        height: context.isMobile ? context.height * .2 : 200,
                        width: context.isMobile ? context.width * .44 : 200,
                        product: products[index],
                        onCart: (type) {
                          discount
                              .add(DiscountsEvent.addToCart(products[index].id,type));
                          hit.add(HitEvent.addToCart(products[index].id,type));
                          bloc.add(PopularEvent.addToCart(products[index].id,type));
                          latest.add(LatestEvent.addToCart(products[index].id,type));
                        }),
                  );
                },
                failure: () => const SizedBox(),
              ),
            ),
            context.isSmall ? const SizedBox() : Positioned(
              top: 100,
              right: 4,
              child: AppButton(
                height: 40,
                width: 40,
                animate: true,
                text: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
                textColor: Colors.black,
                borderRadius: 50,
                borderColor: AppColors.white,
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                fillColor: AppColors.bgLight,
                onPressed: () {
                  bloc.add(PopularEvent.positionNext(currentWidth));
                },
              ),
            ),
            context.isSmall ? const SizedBox() : Positioned(
              top: 100,
              left: 4,
              child: AppButton(
                height: 40,
                width: 40,
                animate: true,
                text: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 17,
                ),
                textColor: Colors.black,
                borderRadius: 50,
                borderColor: AppColors.white,
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                fillColor: AppColors.bgLight,
                onPressed: () {
                  bloc.add(PopularEvent.position(currentWidth));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
