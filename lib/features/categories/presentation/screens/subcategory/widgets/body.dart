import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../../core/constants/app_illustrations.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../product/presentation/widgets/product_card.dart';
import '../bloc/subcategory_bloc.dart';

class SubcategoryBody extends HookWidget {
  const SubcategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();
    final state = useBlocBuilder(bloc);

    return state.when(
      loadInProgress: () => context.isSmall
          ? const CupertinoActivityIndicator()
          : const SizedBox(
              child: Center(
                child: Text("Выберите категорию для отоброжение продуктов ..."),
              ),
            ),
      ready: (
        category,
        categories,
        products,
        selectedCategory,
        isCategoriesLoading,
        isProductsLoading,
        isList,
        isPaginationLoading,
        filter,
      ) {
        final currentWidth = MediaQuery.of(context).size.width;
        final crossCount = (currentWidth / 300).floor();

        if (isProductsLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }

        if (products.isEmpty) {
          return SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIllustrations.empty),
                Text(
                  'errors.empty_products'.tr(),
                  style: context.theme.textTheme.titleMedium,
                ),
              ],
            ),
          );
        }

        return Stack(
          children: [
            isList
                ? Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: ListView.separated(
                      controller: bloc.scrollController,
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 120),
                      itemBuilder: (context, index) => ProductCard.list(
                        product: products[index],
                        onPressed: () {
                          log.e(products[index]);
                        },
                        onCart: (type) => bloc.add(
                            SubcategoryEvent.changeCartState(
                                products[index], type)),
                        fieldController: bloc.quantityControllers[index],
                      ),
                      separatorBuilder: (context, index) => verticalSpace10,
                      itemCount: products.length,
                    ),
                  )
                : GridView.builder(
                    controller: bloc.scrollController,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 120),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            currentWidth < 1400 && currentWidth > 1200
                                ? 4
                                : currentWidth < 1300 && currentWidth > 700
                                    ? context.isTablet
                                        ? 2
                                        : 3
                                    : currentWidth < 600
                                        ? 2
                                        : crossCount,
                        childAspectRatio: currentWidth < 400
                            ? .5
                            : context.isTablet
                                ? .7
                                : .6,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 1),
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard.grid(
                      height: 200,
                      width: 200,
                      product: products[index],
                      onCart: (type) => bloc.add(
                          SubcategoryEvent.changeCartState(
                              products[index], type)),
                      fieldController: bloc.quantityControllers[index],
                    ),
                  ),
            AnimatedPositioned(
              bottom: isPaginationLoading ? 120 : -36,
              left: context.width * .46,
              right: context.width * .46,
              duration: Durations.medium2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 36,
                  child: ColoredBox(
                    color: context.cardColor,
                    child: const CupertinoActivityIndicator(),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
