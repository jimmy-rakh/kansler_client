import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/search/presentation/search_screen/widgets/categories_section.dart';
import 'package:kansler/features/search/presentation/search_screen/widgets/categories_view.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../product/presentation/widgets/product_card.dart';
import '../../domain/entities/search.entity.dart';
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

    return SelectionArea(
      child: Container(
        color: context.background,
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1300),
              child: Scaffold(
                appBar: AppBarWidget(
                  showLeading: true,
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton.filled(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(context.cardColor),
                      ),
                      onPressed: () {
                        if (!context.isSmall &&
                            (state.whenOrNull(
                                  success: (status,
                                          products,
                                          filterData,
                                          isList,
                                          isMoreLoading,
                                          activePage,
                                          organizations) =>
                                      activePage != 0,
                                ) ??
                                false)) {
                          bloc.add(const SearchEvent.setBaseView());
                          return;
                        }
                        router.popForced();
                      },
                      icon: const Icon(KazeIcons.arrowLeftOutline),
                    ),
                  ),
                  leadingWidth: 58,
                  preferredSize: const Size.fromHeight(60),
                  actions: [
                    context.isSmall
                        ? GestureDetector(
                            onTap: () =>
                                bloc.add(const SearchEvent.showFilters()),
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
                    context.isSmall
                        ? GestureDetector(
                            onTap: () =>
                                bloc.add(const SearchEvent.changeListType()),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: context.cardColor,
                              ),
                              child: Icon(state.whenOrNull(
                                success: (status,
                                        products,
                                        filterData,
                                        isList,
                                        isMoreLoading,
                                        activePage,
                                        organizations) =>
                                    isList
                                        ? KazeIcons.grid2Outline
                                        : KazeIcons.sliderVerticalOutline,
                              )),
                            ),
                          )
                        : const SizedBox(),
                    horizontalSpace12
                  ],
                  child: AppTextField(
                    fieldController: bloc.fieldController,
                    fillColor: context.cardColor,
                    radius: 4,
                    prefix: const Icon(KazeIcons.searchOutline),
                    prefixPadding: const EdgeInsets.symmetric(horizontal: 8),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: context.isSmall ? 8 : 12,
                        vertical: context.isSmall ? 10 : 14),
                    hint: 'common.search'.tr(),
                    autoFocus: true,
                    hintStyle: context.theme.textTheme.bodyMedium,
                    style: context.theme.textTheme.bodyMedium,
                    textInputType: TextInputType.text,
                    onFieldSubmitted: (p0) =>
                        bloc.add(const SearchEvent.search()),
                    onChange: (p0) => bloc.add(const SearchEvent.search()),
                  ),
                ),
                body: Row(
                  children: [
                    context.isSmall
                        ? const SizedBox()
                        : Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: context.isDesktop
                                  ? 370
                                  : context.isSmall
                                      ? context.width
                                      : context.isTablet
                                          ? context.width * .38
                                          : context.width * .3,
                              height: context.height,
                              decoration:
                                  BoxDecoration(color: context.cardColor),
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 12),
                                    child: Text(
                                      'Фильтр',
                                      style: context.titleLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Стиль просмотра',
                                          style: context.titleSmall,
                                        ),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () => bloc.add(
                                                  const SearchEvent
                                                      .changeListType()),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: context.background,
                                                ),
                                                child: state.whenOrNull(
                                                    success: (status,
                                                            products,
                                                            filterData,
                                                            isList,
                                                            isMoreLoading,
                                                            activePage,
                                                            organizations) =>
                                                        Icon(
                                                          KazeIcons
                                                              .sliderVerticalOutline,
                                                          color: isList
                                                              ? context.primary
                                                              : context.titleSmall?.color
                                                        )),
                                              ),
                                            ),
                                            horizontalSpace5,
                                            GestureDetector(
                                              onTap: () => bloc.add(
                                                  const SearchEvent
                                                      .changeListType()),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: context.background,
                                                ),
                                                child: state.whenOrNull(
                                                    success: (status,
                                                            products,
                                                            filterData,
                                                            isList,
                                                            isMoreLoading,
                                                            activePage,
                                                            organizations) =>
                                                        Icon(
                                                          KazeIcons
                                                              .grid2Outline,
                                                          color: !isList
                                                              ? context.primary
                                                              : context.titleSmall?.color
                                                        )),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  AnimatedSwitcher(
                                    duration: Durations.medium2,
                                    child: state.whenOrNull(
                                      success: (
                                        status,
                                        products,
                                        filterData,
                                        isList,
                                        isMoreLoading,
                                        activePage,
                                        organizations,
                                      ) {
                                        switch (activePage) {
                                          case 1:
                                            return const CategoriesView();
                                          // case 2:
                                          //   return BrandsView(
                                          //     data: filterData!,
                                          //   );
                                          default:
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16),
                                              child: Column(
                                                children: [
                                                  const CategoriesSection(),
                                                  verticalSpace12,
                                                  // const BrandsSection(),
                                                  // verticalSpace12,
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Цена от:',
                                                              style: context
                                                                  .titleMedium,
                                                            ),
                                                            verticalSpace12,
                                                            SizedBox(
                                                              height: 50,
                                                              child: AppTextField(
                                                                  fieldController:
                                                                      bloc
                                                                          .priceFromController,
                                                                  radius: 4,
                                                                  enabledBorderColor:
                                                                      Colors
                                                                          .grey,
                                                                  fillColor: context
                                                                      .background,
                                                                  hint: '...',
                                                                  onChange: (value) =>
                                                                      bloc.add(SearchEvent.priceFrom(int.parse(bloc
                                                                          .priceFromController
                                                                          .text)))),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      horizontalSpace16,
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Цена до:',
                                                              style: context
                                                                  .titleMedium,
                                                            ),
                                                            verticalSpace12,
                                                            SizedBox(
                                                              height: 50,
                                                              child: AppTextField(
                                                                  fieldController:
                                                                      bloc
                                                                          .priceToController,
                                                                  radius: 4,
                                                                  enabledBorderColor:
                                                                      Colors
                                                                          .grey,
                                                                  fillColor: context
                                                                      .background,
                                                                  hint: '...',
                                                                  onChange: (value) =>
                                                                      bloc.add(SearchEvent.priceTo(int.parse(bloc
                                                                          .priceToController
                                                                          .text)))),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  verticalSpace12,
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Сортировать по:',
                                                        style:
                                                            context.titleMedium,
                                                      ),
                                                      verticalSpace12,
                                                      Container(
                                                        width:
                                                            context.width * .33,
                                                        decoration: BoxDecoration(
                                                            color: context
                                                                .background,
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            4))),
                                                        child: Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2),
                                                            child: Theme(
                                                              data: Theme.of(
                                                                      context)
                                                                  .copyWith(
                                                                focusColor: context
                                                                    .cardColor,
                                                              ),
                                                              child:
                                                                  DropdownButton<
                                                                      String>(
                                                                isExpanded:
                                                                    true,
                                                                dropdownColor:
                                                                    context
                                                                        .background,
                                                                underline:
                                                                    const SizedBox(),
                                                                autofocus: true,
                                                                focusColor: context
                                                                    .background,
                                                                elevation: 0,
                                                                hint:
                                                                    const Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Text(
                                                                      "Выберите способ получение"),
                                                                ),
                                                                value: filterData
                                                                            ?.orderBy ==
                                                                        "created_at"
                                                                    ? "По дате"
                                                                    : filterData?.orderBy ==
                                                                            "alfabetic"
                                                                        ? "По Алфавиту"
                                                                        : filterData?.orderBy ==
                                                                                "price"
                                                                            ? "Подешевле"
                                                                            : filterData?.orderBy == "-price"
                                                                                ? "Подороже"
                                                                                : filterData?.orderBy == "promotion"
                                                                                    ? "Хиты дня"
                                                                                    : filterData?.orderBy == "discount"
                                                                                        ? "Акции"
                                                                                        : filterData?.orderBy == "new"
                                                                                            ? "Новинки"
                                                                                            : filterData?.orderBy == "bestseller"
                                                                                                ? "Популярные"
                                                                                                : filterData?.orderBy,
                                                                items: <String>[
                                                                  "По дате",
                                                                  "По Алфавиту",
                                                                  "Подешевле",
                                                                  "Подороже",
                                                                  "Хиты дня",
                                                                  "Акции",
                                                                  "Новинки",
                                                                  "Популярные"
                                                                ].map((String
                                                                    value) {
                                                                  return DropdownMenuItem<
                                                                      String>(
                                                                    value:
                                                                        value,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child:
                                                                          SizedBox(
                                                                        width: context.isDesktop
                                                                            ? 280
                                                                            : context.width *
                                                                                .24,
                                                                        child:
                                                                            Text(
                                                                          value,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }).toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  bloc.add(SearchEvent
                                                                      .orderBy(
                                                                          value!));
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  verticalSpace24,
                                                  SizedBox(
                                                      height: 80,
                                                      child: activePage == 0
                                                          ? Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          12,
                                                                      horizontal:
                                                                          16),
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        AppButton(
                                                                      text:
                                                                          'Сбросить',
                                                                      onPressed:
                                                                          () {
                                                                        bloc.add(
                                                                          SearchEvent
                                                                              .addFilter(
                                                                            SearchEntity(
                                                                              title: filterData?.title,
                                                                            ),
                                                                          ),
                                                                        );
                                                                        bloc.add(
                                                                          const SearchEvent
                                                                              .search(),
                                                                        );
                                                                      },
                                                                      fillColor:
                                                                          context
                                                                              .background,
                                                                      borderRadius:
                                                                          4,
                                                                    ),
                                                                  ),
                                                                  horizontalSpace16,
                                                                  Expanded(
                                                                    child:
                                                                        AppButton(
                                                                      text:
                                                                          'Поиск',
                                                                      onPressed:
                                                                          () =>
                                                                              bloc.add(
                                                                        const SearchEvent
                                                                            .search(),
                                                                      ),
                                                                      textColor:
                                                                          context
                                                                              .onPrimary,
                                                                      fillColor:
                                                                          context
                                                                              .primary,
                                                                      borderRadius:
                                                                          4,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          : AppButton(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .all(24),
                                                              text: 'Готово',
                                                              onPressed: () => bloc.add(
                                                                  const SearchEvent
                                                                      .setBaseView()),
                                                              textColor: context
                                                                  .onPrimary,
                                                              fillColor: context
                                                                  .primary,
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
                          ),
                    Expanded(
                      child: state.when(
                        loadInProgress: () => const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                        success: (status, products, filterData, isList,
                            isMoreLoading, activePage, organizations) {
                          if (products!.isEmpty) {
                            return Center(
                                child:
                                    SvgPicture.asset(AppIllustrations.empty));
                          }
                          return status == PreordersStatus.loading
                              ? const Center(
                                  child: CupertinoActivityIndicator(),
                                )
                              : Stack(
                                  alignment: AlignmentDirectional.topCenter,
                                  children: [
                                    isList
                                        ? ListView.separated(
                                            controller: bloc.scrollController,
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: !kIsWeb,
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 15, 120),
                                            itemCount: products.length,
                                            separatorBuilder:
                                                (context, index) =>
                                                    verticalSpace12,
                                            itemBuilder: (context, index) =>
                                                ProductCard.list(
                                              product: products[index],
                                              onCart: (type) => bloc.add(
                                                  SearchEvent.changeCartState(
                                                      products[index])),
                                              fieldController: authBloc.state ==
                                                      const AuthState
                                                          .authenticated()
                                                  ? bloc.quantityControllers[
                                                      index]
                                                  : TextEditingController(
                                                      text: "1"),
                                              onPressed: () {},
                                            ),
                                          )
                                        : GridView.builder(
                                            controller: bloc.scrollController,
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 15, 120),
                                            shrinkWrap: !kIsWeb,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount:
                                                        currentWidth < 1300 &&
                                                                currentWidth >
                                                                    700
                                                            ? context.isTablet
                                                                ? 2
                                                                : 3
                                                            : currentWidth < 600
                                                                ? 2
                                                                : 4,
                                                    childAspectRatio:
                                                        currentWidth < 400
                                                            ? .5
                                                            : context.isTablet
                                                                ? .7
                                                                : .6,
                                                    crossAxisSpacing: 5,
                                                    mainAxisSpacing: 1),
                                            itemCount: products.length,
                                            itemBuilder: (context, index) =>
                                                ProductCard.grid(
                                              height: 200,
                                              width: 200,
                                              product: products[index],
                                              onCart: (type) => bloc.add(
                                                  SearchEvent.changeCartState(
                                                      products[index])),
                                              fieldController: authBloc.state ==
                                                      const AuthState
                                                          .authenticated()
                                                  ? bloc.quantityControllers[
                                                      index]
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
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: SizedBox(
                                          height: 36,
                                          child: ColoredBox(
                                            color: context.cardColor,
                                            child:
                                                const CupertinoActivityIndicator(),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                        },
                        notFound: () => const SizedBox(),
                        error: () => const SizedBox(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
