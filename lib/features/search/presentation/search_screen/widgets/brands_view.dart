import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../core/widgets/app_chip.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';
import '../blocs/search_bloc/search_bloc.dart';

class BrandsView extends HookWidget {
  const BrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BrandsBloc>();
    final filterBloc = context.read<SearchBloc>();
    final state = useBlocBuilder(bloc);
    final filterState = useBlocBuilder(filterBloc);

    useEffect(() {
      bloc.add(BrandsEvent.fetch(filterState.whenOrNull(
          success: (  products,
              filterData,
              isList,
              isMoreLoading,
              activePage,
              organizations,
              search,) =>
          filterData?.categories.isEmpty ?? true ? null : filterData?.categories.first)));

      return null;
    }, [bloc]);

    return state.whenOrNull(
          success: (brands) => Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                for (final brand in brands)
                  filterState.when(
                    success: (  products,
                        filterData,
                        isList,
                        isMoreLoading,
                        activePage,
                        organizations,
                        search,) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AppChip(
                        label: brand.name,
                        radius: 0,
                        value: search!.brands.contains(brand.id),
                        activeColor: context.primary,
                        disabledColor: context.cardColor,
                        onTap: () {
                          List<int> data = [];

                          data.addAll(search.brands);
                          data.contains(brand.id)
                              ? data.remove(brand.id)
                              : data.add(brand.id);
                          filterBloc.add(SearchEvent.addFilter(
                              search.copyWith(brands: data)));
                        },
                      ),
                    ), notFound: () => const SizedBox(), error: () => const SizedBox(),loadInProgress: () => const SizedBox(),
                  )
              ],
            ),
          ),
        ) ??
        const SizedBox();
  }
}
