import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../categories/presentation/screens/category/bloc/categories_bloc.dart';
import '../../../../categories/presentation/screens/category/widgets/card.dart';
import '../filter/filter_bloc.dart';

class CategoriesView extends HookWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoriesBloc>();
    final state = useBlocBuilder(bloc);
    final filterBloc = context.read<FilterBloc>();
    final filterState = useBlocBuilder(filterBloc);

    return state.whenOrNull(
          ready: (categories) => ListView.separated(
            itemBuilder: (context, index) => filterState.when(
              initial: () => const SizedBox(),
              ready: (activePage, organizations, search) => CategoryCard(
                category: categories[index],
                isSelected: search.categories.contains(categories[index].id),
                callback: (v) {
                  List<int> data = [];

                  data.addAll(search.categories);
                  data.contains(categories[index].id)
                      ? data.remove(categories[index].id)
                      : data.add(categories[index].id);
                  filterBloc.add(
                      FilterEvent.addFilter(search.copyWith(categories: data)));
                },
              ),
            ),
            separatorBuilder: (context, index) => verticalSpace12,
            itemCount: categories.length,
          ),
        ) ??
        const SizedBox();
  }
}
