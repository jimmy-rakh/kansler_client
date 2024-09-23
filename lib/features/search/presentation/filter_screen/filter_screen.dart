import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/categories/domain/entities/category.entitity.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/brands_section.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/brands_view.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/categories_section.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/categories_view.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/appbar.dart';
import '../../domain/entities/search.entity.dart';
import 'filter/filter_bloc.dart';

@RoutePage()
class FilterScreen extends HookWidget implements AutoRouteWrapper {
  const FilterScreen({
    super.key,
    required this.searchData,
    this.category,
  });

  final SearchEntity searchData;
  final CategoryEntitity? category;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterBloc>();
    final state = useBlocBuilder(bloc);

    useEffect(() {
      bloc.add(FilterEvent.init(searchData.copyWith(
          categories:
              category != null ? [category!.id] : searchData.categories)));

      return null;
    }, [bloc]);

    return Container(
      color: context.cardColor,
      child: SafeArea(
        minimum: context.isSmall
            ? EdgeInsets.zero
            : const EdgeInsets.fromLTRB(150, 150, 150, 150),
        child: Scaffold(
          appBar: AppBarWidget(
            showLeading: true,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton.filled(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(context.cardColor),
                ),
                onPressed: () {
                  if (state.whenOrNull(
                          ready: (view, products, filter) => view != 0) ??
                      false) {
                    bloc.add(const FilterEvent.setBaseView());
                    return;
                  }

                  Navigator.pop(context);
                },
                icon: const Icon(KazeIcons.arrowLeftOutline),
              ),
            ),
            leadingWidth: 58,
            preferredSize: const Size.fromHeight(60),
            bottomSize: const Size(double.maxFinite, 40),
            child: const Text('Фильтр'),
          ),
          body: AnimatedSwitcher(
              duration: Durations.medium2,
              child: state.whenOrNull(
                ready: (activePage, organizations, search) {
                  switch (activePage) {
                    case 1:
                      return category != null
                          ? const SizedBox.shrink()
                          : const CategoriesView();
                    case 2:
                      return const BrandsView();
                    default:
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView(
                          children: [
                            if (category == null) const CategoriesSection(),
                            verticalSpace12,
                            const BrandsSection(),
                            verticalSpace12,
                            // OrganizationSection(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Цена от:',
                                        style: context.titleMedium,
                                      ),
                                      verticalSpace12,
                                      SizedBox(
                                        height: 50,
                                        child: AppTextField(
                                            fieldController:
                                                bloc.priceFromController,
                                            radius: 4,
                                            enabledBorderColor: Colors.grey,
                                            fillColor: context.cardColor,
                                            hint: '...',
                                            onChange: (value) => bloc.add(
                                                FilterEvent.priceFrom(int.parse(
                                                    bloc.priceFromController
                                                        .text)))),
                                      ),
                                    ],
                                  ),
                                ),
                                horizontalSpace16,
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Цена до:',
                                        style: context.titleMedium,
                                      ),
                                      verticalSpace12,
                                      SizedBox(
                                        height: 50,
                                        child: AppTextField(
                                            fieldController:
                                                bloc.priceToController,
                                            radius: 4,
                                            enabledBorderColor: Colors.grey,
                                            fillColor: context.cardColor,
                                            hint: '...',
                                            onChange: (value) => bloc.add(
                                                FilterEvent.priceTo(int.parse(
                                                    bloc.priceToController
                                                        .text)))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            verticalSpace12,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сортировать по:',
                                  style: context.titleMedium,
                                ),
                                verticalSpace12,
                                Container(
                                  width: context.isSmall
                                      ? context.width
                                      : context.width * .7,
                                  decoration: BoxDecoration(
                                      color: context.cardColor,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4))),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Theme(
                                        data: Theme.of(context).copyWith(
                                          focusColor: context.background,
                                        ),
                                        child: DropdownButton<String>(
                                          dropdownColor: context.cardColor,
                                          underline: const SizedBox(),
                                          autofocus: true,
                                          focusColor: context.background,
                                          elevation: 0,
                                          hint: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                                "Выберите способ получение"),
                                          ),
                                          value: search.orderBy == "created_at"
                                              ? "По дате"
                                              : search.orderBy == "alfabetic"
                                                  ? "По Алфавиту"
                                                  : search.orderBy == "price"
                                                      ? "Подешевле"
                                                      : search.orderBy ==
                                                              "-price"
                                                          ? "Подороже"
                                                          : search.orderBy ==
                                                                  "promotion"
                                                              ? "Хиты дня"
                                                              : search.orderBy ==
                                                                      "discount"
                                                                  ? "Акции"
                                                                  : search.orderBy ==
                                                                          "new"
                                                                      ? "Новинки"
                                                                      : search.orderBy ==
                                                                              "bestseller"
                                                                          ? "Популярные"
                                                                          : search
                                                                              .orderBy,
                                          items: <String>[
                                            "По дате",
                                            "По Алфавиту",
                                            "Подешевле",
                                            "Подороже",
                                            "Хиты дня",
                                            "Акции",
                                            "Новинки",
                                            "Популярные"
                                          ].map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: context.isSmall
                                                      ? context.width * .75
                                                      : context.width * .6,
                                                  child: Text(
                                                    value,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (value) {
                                            bloc.add(
                                                FilterEvent.orderBy(value!));
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpace24,
                          ],
                        ),
                      );
                  }
                },
              )),
          bottomNavigationBar: SizedBox(
              height: 100,
              child: state.whenOrNull(
                ready: (activePage, organizations, search) {
                  if (activePage == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              text: 'Сбросить',
                              onPressed: () => bloc.add(
                                FilterEvent.addFilter(
                                  SearchEntity(title: search.title),
                                ),
                              ),
                              fillColor: context.cardColor,
                              borderRadius: 0,
                            ),
                          ),
                          horizontalSpace16,
                          Expanded(
                            child: AppButton(
                              text: 'Поиск',
                              onPressed: () => router.popForced(search),
                              textColor: context.onPrimary,
                              fillColor: context.primary,
                              borderRadius: 0,
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return AppButton(
                      margin: const EdgeInsets.all(24),
                      text: 'Готово',
                      onPressed: () =>
                          bloc.add(const FilterEvent.setBaseView()),
                      textColor: context.onPrimary,
                      fillColor: context.primary,
                      borderRadius: 0,
                    );
                  }
                },
              )),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<FilterBloc>(),
        child: this,
      );
}
