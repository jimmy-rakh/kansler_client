import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/hit/hit_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/title_section.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../blocs/latest/latest_bloc.dart';

class LatestWidget extends HookWidget {
  const LatestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LatestBloc>();
    final hit = context.read<HitBloc>();
    final discount = context.read<DiscountsBloc>();
    final popular = context.read<PopularBloc>();
    final state = useBlocBuilder(bloc);
    // final currentWidth = MediaQuery.of(context).size.width;
    // final crossCount = (currentWidth / 300).floor();

    return Column(
      children: [
        TitleSectionWidget(
          name: 'common.latest'.tr(),
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
                  product:
                      ProductEntity(id: 0, title: '', barcode: [], price: 0),
                  onCart: (type) {},
                ),
              ),
            ),
            success: (products, cardType) {
              if (products.isEmpty) {
                return SvgPicture.asset(AppIllustrations.empty);
              }

              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 10,
                cacheExtent: 10,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.isMobile ? context.height * .2 : 200,
                  width: context.isMobile ? context.width * .44 : 200,
                  product: products[index],
                  onCart: (type) {
                    discount.add(DiscountsEvent.addToCart(products[index].id,type));
                    hit.add(HitEvent.addToCart(products[index].id,type));
                    popular.add(PopularEvent.addToCart(products[index].id,type));
                    bloc.add(LatestEvent.addToCart(products[index].id,type));
                  },
                ),
              );
            },
            failure: () => const SizedBox(),
          ),
        )
      ],
    );

    // Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         TitleSectionWidget(
    //           name: 'common.latest'.tr(),
    //           onTap: () {},
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(12),
    //           child: GestureDetector(
    //               onTap: () => bloc.add(const LatestEvent.cardType()),
    //               child: Container(
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(8),
    //                     color: context.cardColor,
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(5),
    //                     child: Icon(state.whenOrNull(
    //                       success: (products, cardType) => !cardType
    //                           ? KazeIcons.grid2Outline
    //                           : KazeIcons.sliderVerticalOutline,
    //                     )),
    //                   ))),
    //         )
    //       ],
    //     ),
    //     verticalSpace5,
    //     state.when(
    //       loadInProgress: () => Skeletonizer(
    //         enabled: true,
    //         child: SizedBox(
    //           height: context.height * .33,
    //           child: ListView.separated(
    //             shrinkWrap: true,
    //             physics: const NeverScrollableScrollPhysics(),
    //             padding: const EdgeInsets.fromLTRB(15, 0, 5, 120),
    //             itemCount: 5,
    //             separatorBuilder: (context, index) => verticalSpace12,
    //             itemBuilder: (context, index) => ProductCard.list(
    //               product: ProductEntity(id: 0, title: '', barcode: []),
    //               onCart: () {},
    //               fieldController: TextEditingController(),
    //               onPressed: () {},
    //             ),
    //           ),
    //         ),
    //       ),
    //       success: (products, cardType) {
    //         if (products.isEmpty) {
    //           return SvgPicture.asset(AppIllustrations.empty);
    //         }
    //         return !cardType
    //             ? ListView.separated(
    //                 shrinkWrap: true,
    //                 physics: const NeverScrollableScrollPhysics(),
    //                 padding: const EdgeInsets.fromLTRB(15, 0, 15, 120),
    //                 itemCount: products.length,
    //                 separatorBuilder: (context, index) => verticalSpace12,
    //                 itemBuilder: (context, index) => ProductCard.list(
    //                   product: products[index],
    //                   onCart: () => bloc
    //                       .add(LatestEvent.changeCartState(products[index])),
    //                   fieldController: bloc.quantityControllers[index],
    //                   onPressed: () {},
    //                 ),
    //               )
    //             : GridView.builder(
    //                 padding: const EdgeInsets.fromLTRB(15, 0, 15, 120),
    //                 shrinkWrap: true,
    //                 physics: const NeverScrollableScrollPhysics(),
    //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount:
    //                         currentWidth < 1400 && currentWidth > 1200
    //                             ? 4
    //                             : currentWidth < 1300 && currentWidth > 700
    //                                 ? 3
    //                                 : currentWidth < 600
    //                                     ? 2
    //                                     : crossCount,
    //                     childAspectRatio:
    //                         authBloc.state == const AuthState.authenticated()
    //                             ? currentWidth < 400
    //                                 ? .5
    //                                 : .6
    //                             : currentWidth < 400
    //                                 ? .6
    //                                 : .7,
    //                     crossAxisSpacing: 10,
    //                     mainAxisSpacing: 1),
    //                 itemCount: products.length,
    //                 itemBuilder: (context, index) => ProductCard.grid(
    //                   height: 200,
    //                   width: 200,
    //                   product: products[index],
    //                   onCart: () => bloc
    //                       .add(LatestEvent.changeCartState(products[index])),
    //                   fieldController: bloc.quantityControllers[index],
    //                   onPressed: () {},
    //                 ),
    //               );
    //       },
    //       failure: () => const SizedBox(),
    //     )
    //   ],
    // );
  }
}
