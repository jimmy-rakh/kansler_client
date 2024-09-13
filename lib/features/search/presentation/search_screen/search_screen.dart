import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../product/presentation/widgets/product_card.dart';
import '../../domain/entities/search.entity.dart';
import '../filter_screen/widgets/brands_view.dart';
import '../filter_screen/widgets/categories_view.dart';
import 'blocs/search_bloc/search_bloc.dart';

@RoutePage()
class SearchScreen extends StatefulHookWidget implements AutoRouteWrapper {
  const SearchScreen({
    super.key,
    this.title = '',
  });

  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (ctx) =>
            getIt<SearchBloc>()..add(SearchEvent.search(title: title)),
        child: this,
      );
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void deactivate() {
    BlocProvider.of<SearchBloc>(context).close();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final state = useBlocBuilder(bloc);
    final authBloc = context.read<AuthBloc>();
    final currentWidth = MediaQuery.of(context).size.width;
    final crossCount = (currentWidth / 300).floor();

    return Scaffold(
      appBar: AppBarWidget(
        preferredSize: const Size.fromHeight(60),
        actions: [
          context.isSmall
              ? GestureDetector(
                  onTap: () => bloc.add(const SearchEvent.showFilters()),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: context.cardColor,
                    ),
                    child: const Icon(
                      KazeIcons.setting4outline,
                    ),
                  ),
                )
              : const SizedBox(),
          context.isSmall ? horizontalSpace8 : const SizedBox(),
          GestureDetector(
            onTap: () => bloc.add(const SearchEvent.changeListType()),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: context.cardColor,
              ),
              child: Icon(state.whenOrNull(
                success: (products, filterData, isList, isMoreLoading,
                        activePage, organizations, search) =>
                    isList
                        ? KazeIcons.grid2Outline
                        : KazeIcons.sliderVerticalOutline,
              )),
            ),
          ),
          horizontalSpace12
        ],
        child: AppTextField(
          fieldController: bloc.fieldController,
          fillColor: context.cardColor,
          radius: 4,
          prefix: const Icon(KazeIcons.searchOutline),
          prefixPadding: const EdgeInsets.symmetric(horizontal: 8),
          contentPadding: EdgeInsets.symmetric(
              horizontal: context.isSmall ? 7 : 12,
              vertical: context.isSmall ? 9 : 14),
          hint: 'common.search'.tr(),
          autoFocus: true,
          hintStyle: context.theme.textTheme.bodyMedium,
          style: context.theme.textTheme.bodyMedium,
          textInputType: TextInputType.text,
          onChange: (p0) => bloc.add(const SearchEvent.search()),
        ),
      ),
      body: state.when(
        loadInProgress: () => const Center(
          child: CupertinoActivityIndicator(),
        ),
        success: (products, filterData, isList, isMoreLoading, activePage,
            organizations, search) {
          if (products!.isEmpty) {
            return Center(child: SvgPicture.asset(AppIllustrations.empty));
          }
          return Row(
            children: [
              context.isSmall
                  ? const SizedBox()
                  : Container(
                      width: context.width * .33,
                      height: context.height,
                      decoration: BoxDecoration(color: context.cardColor),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              'Фильтр',
                              style: context.titleLarge,
                            ),
                          ),
                          verticalSpace24,
                          AnimatedSwitcher(
                            duration: Durations.medium2,
                            child: state.whenOrNull(
                              success: (
                                products,
                                filterData,
                                isList,
                                isMoreLoading,
                                activePage,
                                organizations,
                                search,
                              ) {
                                switch (activePage) {
                                  case 1:
                                    return const CategoriesView();
                                  case 2:
                                    return const BrandsView();
                                  default:
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Категории',
                                                style: context.titleMedium,
                                              ),
                                              verticalSpace12,
                                              AppCard(
                                                width: double.maxFinite,
                                                fillColor: context.background,
                                                borderRadius: 4,
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Column(
                                                  children: [
                                                    ...[
                                                      // Wrap(
                                                      //    direction: Axis.horizontal,
                                                      //    spacing: 12,
                                                      //    children: [
                                                      //      for (final category in searchData.categories)
                                                      //        Chip(
                                                      //          label: Text(
                                                      //            categoryState.whenOrNull(
                                                      //              ready: (categories) => categories
                                                      //                  .firstWhere(
                                                      //                      (element) => element.id == category)
                                                      //                  .name,
                                                      //            ) ??
                                                      //                '',
                                                      //          ),
                                                      //        )
                                                      //    ],
                                                      //  )
                                                    ],
                                                    verticalSpace8,
                                                    AppButton(
                                                      text: 'Выбрать',
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12),
                                                      borderRadius: 4,
                                                      fillColor:
                                                          context.cardColor,
                                                      width: 120,
                                                      onPressed: () => bloc.add(
                                                          const SearchEvent
                                                              .chooseCategories()),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          verticalSpace12,
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Бренды',
                                                style: context.titleMedium,
                                              ),
                                              verticalSpace12,
                                              AppCard(
                                                width: double.maxFinite,
                                                fillColor: context.background,
                                                borderRadius: 4,
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Column(
                                                  children: [
                                                    ...[
                                                      // Wrap(
                                                      //       alignment: WrapAlignment.center,
                                                      //       direction: Axis.horizontal,
                                                      //       spacing: 12,
                                                      //       children: [
                                                      //         for (final brand in searchData.brands)
                                                      //           Chip(
                                                      //             label: Text(brandsState.when(
                                                      //               initial: () => '',
                                                      //               success: (brands) => brands
                                                      //                   .firstWhere((element) => element.id == brand)
                                                      //                   .name,
                                                      //             )),
                                                      //           )
                                                      //       ],
                                                      //     )
                                                    ],
                                                    verticalSpace8,
                                                    AppButton(
                                                      text: 'Выбрать',
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12),
                                                      borderRadius: 4,
                                                      fillColor:
                                                          context.cardColor,
                                                      width: 120,
                                                      onPressed: () => bloc.add(
                                                          const SearchEvent
                                                              .chooseBrands()),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          // verticalSpace12,
                                          // OrganizationSection(),
                                          verticalSpace24,
                                          SizedBox(
                                              height: 100,
                                              child: activePage == 0
                                                  ? Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 24,
                                                          horizontal: 16),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: AppButton(
                                                              text: 'Сбросить',
                                                              onPressed: () =>
                                                                  bloc.add(
                                                                SearchEvent
                                                                    .addFilter(
                                                                  SearchEntity(
                                                                    title: search
                                                                        ?.title,
                                                                  ),
                                                                ),
                                                              ),
                                                              fillColor: context
                                                                  .background,
                                                              borderRadius: 4,
                                                            ),
                                                          ),
                                                          horizontalSpace16,
                                                          Expanded(
                                                            child: AppButton(
                                                              text: 'Поиск',
                                                              onPressed: () =>
                                                                  router.popForced(
                                                                      search),
                                                              textColor: context
                                                                  .onPrimary,
                                                              fillColor: context
                                                                  .primary,
                                                              borderRadius: 4,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  : AppButton(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              24),
                                                      text: 'Готово',
                                                      onPressed: () => bloc.add(
                                                          const SearchEvent
                                                              .setBaseView()),
                                                      textColor:
                                                          context.onPrimary,
                                                      fillColor:
                                                          context.primary,
                                                      borderRadius: 0,
                                                    )),
                                        ],
                                      ),
                                    );
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
              Expanded(
                child: Stack(
                  children: [
                    isList
                        ? ListView.separated(
                            controller: bloc.scrollController,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 120),
                            itemCount: products.length,
                            separatorBuilder: (context, index) =>
                                verticalSpace12,
                            itemBuilder: (context, index) => ProductCard.list(
                              product: products[index],
                              onCart: () => bloc.add(
                                  SearchEvent.changeCartState(products[index])),
                              fieldController: authBloc.state ==
                                      const AuthState.authenticated()
                                  ? bloc.quantityControllers[index]
                                  : TextEditingController(text: "1"),
                              onPressed: () {},
                            ),
                          )
                        : GridView.builder(
                            controller: bloc.scrollController,
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 120),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: currentWidth < 1400 &&
                                            currentWidth > 1200
                                        ? 4
                                        : currentWidth < 1300 &&
                                                currentWidth > 700
                                            ? 3
                                            : currentWidth < 600
                                                ? 2
                                                : crossCount,
                                    childAspectRatio:
                                        currentWidth < 400 ? .5 : .6,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 1),
                            itemCount: products.length,
                            itemBuilder: (context, index) => ProductCard.grid(
                              height: 200,
                              width: 200,
                              product: products[index],
                              onCart: () => bloc.add(
                                  SearchEvent.changeCartState(products[index])),
                              fieldController: authBloc.state ==
                                      const AuthState.authenticated()
                                  ? bloc.quantityControllers[index]
                                  : TextEditingController(),
                              onPressed: () {},
                            ),
                          ),
                    AnimatedPositioned(
                      bottom: isMoreLoading ? 60 : -36,
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
                ),
              ),
            ],
          );
        },
        notFound: () => const SizedBox(),
        error: () => const SizedBox(),
      ),
    );
  }
}
