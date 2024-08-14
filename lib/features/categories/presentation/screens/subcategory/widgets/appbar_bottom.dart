import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/widgets/app_chip.dart';
import '../bloc/subcategory_bloc.dart';

class SubcategoryAppBarBottom extends HookWidget {
  const SubcategoryAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();

    final state = useBlocBuilder(bloc);
    return state.when(
      loadInProgress: () => const SizedBox(),
      ready: (
        category,
        categories,
        products,
        selectedCategory,
        isCategoriesLoading,
        isProductsLoading,
        isList,
        isPaginationLoading
      ) =>
          SizedBox(
        height: 50,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => AppChip(
            label: categories[index].name,
            radius: 6,
            value: categories[index].id == selectedCategory?.id,
            disabledColor: context.cardColor,
            onTap: () =>
                bloc.add(SubcategoryEvent.chooseSubcategory(categories[index])),
          ),
          separatorBuilder: (context, index) => horizontalSpace12,
          itemCount: categories.length,
        ),
      ),
    );
  }
}
