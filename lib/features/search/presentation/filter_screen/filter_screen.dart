import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/brands_section.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/brands_view.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/categories_section.dart';
import 'package:kansler/features/search/presentation/filter_screen/widgets/categories_view.dart';

import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/appbar.dart';
import '../../domain/entities/search.entity.dart';
import 'filter/filter_bloc.dart';

@RoutePage()
class FilterScreen extends HookWidget implements AutoRouteWrapper {
  const FilterScreen({
    super.key,
    required this.searchData,
  });

  final SearchEntity searchData;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterBloc>();
    final state = useBlocBuilder(bloc);

    useEffect(() {
      bloc.add(FilterEvent.init(searchData));

      return null;
    }, [bloc]);

    return Container(
      color: context.cardColor,
      child: SafeArea(
        minimum: context.isSmall
            ? EdgeInsets.zero
            : const EdgeInsets.fromLTRB(300, 150, 300, 150),
        child: Scaffold(
          appBar: const AppBarWidget(
            preferredSize: Size.fromHeight(60),
            child: Text('Фильтр'),
          ),
          body: AnimatedSwitcher(
              duration: Durations.medium2,
              child: state.whenOrNull(
                ready: (activePage, organizations, search) {
                  switch (activePage) {
                    case 1:
                      return const CategoriesView();
                    case 2:
                      return const BrandsView();
                    default:
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView(
                          children: const [
                            CategoriesSection(),
                            verticalSpace12,
                            BrandsSection(),
                            // verticalSpace12,
                            // OrganizationSection(),
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
                                  SearchEntity(
                                    title: search.title,
                                  ),
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
