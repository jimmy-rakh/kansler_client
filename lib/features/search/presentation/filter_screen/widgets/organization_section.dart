import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/app_chip.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';
import '../filter/filter_bloc.dart';

class OrganizationSection extends HookWidget {
  const OrganizationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FilterBloc>();
    final brandsBloc = context.read<BrandsBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Организации',
          style: context.titleMedium,
        ),
        verticalSpace12,
        AppCard(
          width: double.maxFinite,
          fillColor: context.cardColor,
          borderRadius: 12,
          padding: const EdgeInsets.all(12),
          alignment: Alignment.centerLeft,
          child: state.whenOrNull(
            ready: (activePage, organizations, search) => Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.vertical,
              spacing: 12,
              runSpacing: 12,
              children: [
                for (final organization in organizations)
                  AppChip(
                    label: organization.name,
                    disabledColor: context.background,
                    radius: 8,
                    activeLabelColor: context.onPrimary,
                    activeColor: context.primary,
                    borderColor: context.background,
                    value: search.organizationId == organization.id,
                    onTap: () {
                      bloc.add(FilterEvent.addFilter(search.copyWith(
                          organizationId:
                              search.organizationId == organization.id
                                  ? 0
                                  : organization.id)));

                      brandsBloc.add(BrandsEvent.fetch(organization.id));
                    },
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
