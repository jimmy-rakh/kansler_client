import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../app/di.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_tabbar.dart';
import '../../../../core/widgets/appbar.dart';
import 'cubit/limits_cubit.dart';

@RoutePage()
class LimitsScreen extends HookWidget implements AutoRouteWrapper {
  const LimitsScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LimitsCubit>();
    final state = useBlocBuilder(bloc);
    final tabController = useTabController(initialLength: 2);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    useEffect(() {
      bloc.init(id);

      return null;
    }, [bloc]);
    return Scaffold(
      appBar: AppBarWidget(
        preferredSize: const Size.fromHeight(60),
        centerTitle: true,
        child:  Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: AppTabBar(
            tabController: tabController,
            childRadius: 24,
            mainRadius: 12,
            tabList: const ['Лимиты', 'Бонусы'],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            itemBuilder: (_, index) => AppCard(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              borderRadius: 12,
              items: [
                Text(
                  'Поставщик',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  state.limits[index].organization.name!,
                  style: context.theme.textTheme.titleSmall,
                ),
                verticalSpace8,
                Text(
                  'Компания',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  state.limits[index].company.name!,
                  style: context.theme.textTheme.titleSmall!,
                ),
                verticalSpace8,
                Text(
                  'Сумма',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  "${currencyFormatter.format(double.parse( state.limits[index].totalLimit ?? '0')).replaceAll(".", " ")} ${'common.sum'.tr()}",
                  style: context.theme.textTheme.titleSmall,
                ),
              ],
            ),
            itemCount: state.limits.length,
          ),
          ListView.builder(
            itemBuilder: (_, index) => AppCard(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              borderRadius: 12,
              items: [
                Text(
                  'Поставщик',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  state.bonuses[index].organization.name!,
                  style: context.theme.textTheme.titleSmall,
                ),
                verticalSpace8,
                Text(
                  'Компания',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  state.bonuses[index].company.name!,
                  style: context.theme.textTheme.titleSmall!,
                ),
                verticalSpace8,
                Text(
                  'Сумма',
                  style: context.theme.textTheme.titleSmall!
                      .copyWith(color: AppColors.grey),
                ),
                Text(
                  "${currencyFormatter.format(double.parse(state.bonuses[index].totalBonus ?? '0')).replaceAll(".", " ")} ${'common.sum'.tr()}",
                  style: context.theme.textTheme.titleSmall,
                ),
              ],
            ),
            itemCount: state.bonuses.length,
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<LimitsCubit>(),
        child: this,
      );
}
