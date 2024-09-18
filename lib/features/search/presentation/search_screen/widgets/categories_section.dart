import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../categories/presentation/screens/category/bloc/categories_bloc.dart';
import '../blocs/search_bloc/search_bloc.dart';

class CategoriesSection extends HookWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final state = useBlocBuilder(bloc);
    final categoryBloc = context.read<CategoriesBloc>();
    final categoryState = useBlocBuilder(categoryBloc);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Категории',
          style: context.titleMedium,
        ),
        verticalSpace12,
        AppCard(
          width: double.maxFinite,
          fillColor: context.background,
          borderRadius: 0,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ...[
                state.when(
                  success: ( products,
                      filterData,
                      isList,
                      isMoreLoading,
                      activePage,
                      organizations,
                      ) {
                    return filterData?.categories == null ? const SizedBox() : Wrap(
                      direction: Axis.horizontal,
                      spacing: 12,
                      children: [
                        for (final category in filterData!.categories)
                          Chip(
                            label: Text(
                              categoryState.whenOrNull(
                                    ready: (categories) => categories
                                        .firstWhere(
                                            (element) => element.id == category)
                                        .name,
                                  ) ??
                                  '',
                            ),
                          )
                      ],
                    );
                  },
                  notFound: () => const SizedBox(), error: () => const SizedBox(),loadInProgress: () => const SizedBox(),
                ),
              ],
              verticalSpace8,
              AppButton(
                text: 'Выбрать',
                padding: const EdgeInsets.symmetric(vertical: 12),
                borderRadius: 0,
                fillColor: context.cardColor,
                width: 120,
                onPressed: () => bloc.add(const SearchEvent.chooseCategories()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
