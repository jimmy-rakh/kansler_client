import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/widgets/app_chip.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';
import '../filter/filter_bloc.dart';

class BrandsView extends HookWidget {
  const BrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BrandsBloc>();
    final filterBloc = context.read<FilterBloc>();
    final state = useBlocBuilder(bloc);
    final filterState = useBlocBuilder(filterBloc);

    return state.whenOrNull(
          success: (brands) => Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (final brand in brands)
                  filterState.when(
                    initial: () => const SizedBox(),
                    ready: (activePage, organizations, search) => AppChip(
                      label: brand.name,
                      radius: 8,
                      value: search.brands.contains(brand.id),
                      activeColor: context.primary,
                      disabledColor: context.cardColor,
                      onTap: () {
                        List<int> data = [];

                        data.addAll(search.brands);
                        data.contains(brand.id)
                            ? data.remove(brand.id)
                            : data.add(brand.id);
                        filterBloc.add(FilterEvent.addFilter(
                            search.copyWith(brands: data)));
                      },
                    ),
                  )
              ],
            ),
          ),
        ) ??
        const SizedBox();
  }
}
