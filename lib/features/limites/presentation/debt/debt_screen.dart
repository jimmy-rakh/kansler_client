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
import 'cubit/debt_cubit.dart';

@RoutePage()
class DebtScreen extends HookWidget implements AutoRouteWrapper {
  const DebtScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DebtCubit>();
    final state = useBlocBuilder(bloc);
    final tabController = useTabController(initialLength: 2);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    useEffect(() {
      bloc.init(id);

      return null;
    }, [bloc]);
    return Scaffold(
      appBar: AppBarWidget(
        preferredSize: const Size.fromHeight(120),
        centerTitle: true,
        bottomSize: const Size.fromHeight(60),
        bottomChild: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: AppTabBar(
            tabController: tabController,
            childRadius: 24,
            mainRadius: 12,
            tabList: [
              'Долги (${state.debts?.length ?? 0})',
              'Оплаты (${state.payments?.length ?? 0})'
            ],
          ),
        ),
        child: AppCard(
          fillColor: context.cardColor,
          borderRadius: 12,
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                dropdownColor: context.cardColor,
                alignment: AlignmentDirectional.center,
                value: state.choosedContract,
                elevation: 0,
                style: const TextStyle(color: Colors.deepPurple),
                hint: Text(
                  'Выберите договор',
                  style: context.titleSmall,
                ),
                borderRadius: BorderRadius.circular(12),
                onChanged: bloc.chooseContract,
                items: state.contracts
                    .map(
                      (e) => DropdownMenuItem<int>(
                        alignment: AlignmentDirectional.center,
                        value: e.id,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(
                            child: Text(
                              "${e.name} ${e.organization.name}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: context.bodySmall?.color),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
      body: state.debts == null || state.payments == null
          ? const SizedBox()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TabBarView(
                controller: tabController,
                children: [
                  state.debts!.isEmpty
                      ? const Center(
                          child: Text('По договору долгов не найдно!'),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          itemBuilder: (context, index) => AppCard(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            borderRadius: 12,
                            items: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      '15 дней',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].debt15Days)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      '16-45 дней',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].debt1645Days)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      '46-60 дней',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].debt4660Days)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      '61-90 дней',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].debt6190Days)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      'Свыше 120 дней',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].debtOver120Days)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              const Divider(),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      'Общий долг',
                                      style: context.titleSmall!
                                          .copyWith(color: AppColors.red),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.debts![index].totalDebt)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.titleSmall!
                                        .copyWith(color: AppColors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) => verticalSpace12,
                          itemCount: state.debts!.length,
                        ),
                  state.payments!.isEmpty
                      ? const Center(
                          child: Text('По договору оплат не найдно!'),
                        )
                      : ListView.builder(
                          controller: bloc.paymentsController,
                          reverse: true,
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(
                              bottom: 100, left: 10, right: 10),
                          itemBuilder: (_, index) => AppCard(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            borderRadius: 12,
                            items: [
                              Text(
                                'Поставщик',
                                style: context.theme.textTheme.titleSmall!
                                    .copyWith(color: AppColors.grey),
                              ),
                              Text(
                                state.payments![index].organization.name!,
                                style: context.theme.textTheme.titleSmall,
                              ),
                              verticalSpace8,
                              Text(
                                'Компания',
                                style: context.theme.textTheme.titleSmall!
                                    .copyWith(color: AppColors.grey),
                              ),
                              Text(
                                state.payments![index].company.name!,
                                style: context.theme.textTheme.titleSmall!,
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      'Сумма',
                                      style: context.theme.textTheme.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(
                                    ': ${currencyFormatter.format(double.parse(state.payments![index].amount)).replaceAll(".", " ")} ${'common.sum'.tr()}',
                                    style: context.theme.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              verticalSpace8,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      'Дата',
                                      style: context.theme.textTheme.titleSmall!
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ),
                                  horizontalSpace5,
                                  Text(": ${DateFormat('dd.MM.yyyy').format(
                                    DateTime.parse(state.payments![index].date)
                                        .toLocal(),
                                  )}"),
                                ],
                              ),
                            ],
                          ),
                          itemCount: state.payments!.length,
                        ),
                ],
              ),
            ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<DebtCubit>(),
        child: this,
      );
}
