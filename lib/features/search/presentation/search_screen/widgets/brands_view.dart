import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/search/domain/entities/search.entity.dart';
import '../../../../../core/widgets/app_chip.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';
import '../blocs/search_bloc/search_bloc.dart';

class BrandsView extends HookWidget {
  const BrandsView({
    super.key,
    required this.data,
  });

  final SearchEntity data;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BrandsBloc>();
    final state = useBlocBuilder(bloc);
    final searchBloc = context.read<SearchBloc>();

    useEffect(() {
      bloc.add(BrandsEvent.fetch(
          data.categories.isEmpty ? null : data.categories.first));

      return null;
    }, [bloc]);

    return state.whenOrNull(
          success: (brands) => Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              shrinkWrap: true,
              children: [
                for (final brand in brands)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppChip(
                      label: brand.name,
                      radius: 0,
                      value: data.brands.contains(brand.id),
                      activeColor: context.primary,
                      disabledColor: context.cardColor,
                      onTap: () {
                        List<int> brnds = [];

                        brnds.addAll(data.brands);
                        brnds.contains(brand.id)
                            ? brnds.remove(brand.id)
                            : brnds.add(brand.id);
                        searchBloc.add(SearchEvent.addFilter(
                            data.copyWith(brands: brnds)));
                      },
                    ),
                  ),
              ],
            ),
          ),
        ) ??
        const SizedBox();
  }
}
