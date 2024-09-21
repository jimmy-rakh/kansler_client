import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/body.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/bloc/subcategory_bloc.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/widgets/appbar_bottom.dart';
import '../../../../../core/widgets/appbar.dart';
import '../subcategory/widgets/body.dart';

@RoutePage()
class CategoriesScreen extends HookWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();
    final state = useBlocBuilder(bloc);
    return Scaffold(
      appBar: context.isSmall
          ? const AppBarWidget(
              preferredSize: Size.fromHeight(62),
              showLeading: false,
              child: CategoriesAppBar(),
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1300),
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.all( context.isSmall ? 0 : 5),
                child: SizedBox(
                    width:context.isDesktop ? 370 : context.isSmall
                        ? context.width
                        : context.isTablet
                            ? context.width * .38
                            : context.width * .3,
                    height: context.height,
                    child: const CategoriesBody()),
              ),
              context.isSmall
                  ? const SizedBox()
                  : SizedBox(
                      width:context.isDesktop ? 920 : context.isTablet
                          ? context.width * .6
                          : context.width * .67,
                      height: context.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.whenOrNull(
                                ready: (category,
                                        categories,
                                        products,
                                        selectedCategory,
                                        isCategoriesLoading,
                                        isProductsLoading,
                                        isList,
                                        isPaginationLoading,
                                        filterData) =>
                                    AppBarWidget(
                                  leadingWidth: 0,
                                  preferredSize: Size.fromHeight(
                                      category.hasChildren ? 110 : 60),
                                  bottomChild: category.hasChildren
                                      ? const SubcategoryAppBarBottom()
                                      : null,
                                  bottomSize: const Size(double.maxFinite, 40),
                                  child: SubcategoryAppBar(category: category),
                                ),
                              ) ??
                              const SizedBox(),
                          SizedBox(
                              height: context.height * .8,
                              child: const SubcategoryBody()),
                        ],
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
