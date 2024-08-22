import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../categories/presentation/screens/category/bloc/categories_bloc.dart';
import '../filter/filter_bloc.dart';

class CategoriesSection extends HookWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterBloc>();
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
          fillColor: context.cardColor,
          borderRadius: 0,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ...[
                state.when(
                  initial: () => const SizedBox(),
                  ready: (activePage, organizations, searchData) {
                    return Wrap(
                      direction: Axis.horizontal,
                      spacing: 12,
                      children: [
                        for (final category in searchData.categories)
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
                ),
              ],
              verticalSpace8,
              AppButton(
                text: 'Выбрать',
                padding: const EdgeInsets.symmetric(vertical: 12),
                borderRadius: 0,
                fillColor: context.background,
                width: 120,
                onPressed: () => bloc.add(const FilterEvent.chooseCategories()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
