import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';
import 'package:kansler/features/orders/presentation/screen/widgets/orders_view.dart';
import 'package:kansler/features/orders/presentation/screen/widgets/preorders_view.dart';

import '../../../../app/di.dart';
import '../../../../core/widgets/appbar.dart';
import 'bloc/orders_bloc.dart';

@RoutePage()
class OrdersScreen extends HookWidget implements AutoRouteWrapper {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
        appBar: AppBarWidget(
          preferredSize: const Size.fromHeight(60),
          showLeading: false,
          child: context.isSmall
              ? Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppTabBar(
                    tabController: tabController,
                    tabList: const ['Заказы', 'Предзаказы'],
                  ),
                )
              : const SizedBox(),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            OrdersView(),
            PreordersView(),
          ],
        ));
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrdersBloc>(),
        child: this,
      );
}
