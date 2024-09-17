import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';
import '../blocs/search_bloc/search_bloc.dart';

class BrandsSection extends HookWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final brandsBloc = context.read<BrandsBloc>();
    final state = useBlocBuilder(bloc);
    final brandsState = useBlocBuilder(brandsBloc);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Бренды',
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
                  success: (   products,
                      filterData,
                      isList,
                      isMoreLoading,
                      activePage,
                      organizations,
                      search,) {
                    return search?.brands == null ? const SizedBox() : Wrap(
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 12,
                      children: [
                        for (final brand in search!.brands)
                          Chip(
                            label: Text(brandsState.when(
                              initial: () => '',
                              success: (brands) => brands
                                  .firstWhere((element) => element.id == brand)
                                  .name,
                            )),
                          )
                      ],
                    );
                  }, notFound: () => const SizedBox(), error: () => const SizedBox(),loadInProgress: () => const SizedBox(),
                ),
              ],
              verticalSpace8,
              AppButton(
                text: 'Выбрать',
                padding: const EdgeInsets.symmetric(vertical: 12),
                borderRadius: 0,
                fillColor: context.background,
                width: 120,
                onPressed: () => bloc.add(const SearchEvent.chooseBrands()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
