import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../domain/entities/category.entitity.dart';
import '../bloc/subcategory_bloc.dart';

class SubcategoryAppBar extends HookWidget {
  const SubcategoryAppBar({super.key, required this.category});

  final CategoryEntitity category;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();
    final state = useBlocBuilder(bloc);

    return Row(
      children: [
        Expanded(
          child: Text(
            category.name,
            style: context.theme.textTheme.titleSmall,
          ),
        ),
        horizontalSpace12,
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                          onTap: () =>
                              bloc.add(const SubcategoryEvent.showFilters()),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: context.cardColor,
                            ),
                            child: const Icon(
                              KazeIcons.setting4outline,
                            ),
                          ),
                        ),
                  horizontalSpace8,
                  GestureDetector(
                    onTap: () =>
                        bloc.add(const SubcategoryEvent.listTypeToggle()),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: context.cardColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(state.whenOrNull(
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
                          ) =>
                              isList
                                  ? KazeIcons.grid2Outline
                                  : KazeIcons.sliderVerticalOutline,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
