import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
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
    final ordersBloc = context.read<OrdersBloc>();
    final ordersState = useBlocBuilder(ordersBloc);
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
        appBar: AppBarWidget(
          preferredSize: context.isSmall
              ? const Size.fromHeight(60)
              : const Size.fromHeight(0),
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
        body:context.isSmall
            ? TabBarView(
          controller: tabController,
          children: const [
            OrdersView(),
            PreordersView(),
          ],
        )
            :Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: context.width * .33,
                height: context.height,
                decoration: BoxDecoration(color: context.cardColor),
                child: Column(
                  children: [
                    Container(
                      width: context.width * .33,
                      height: 70,
                      decoration: BoxDecoration(color: context.cardColor),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: AppTabBar(
                          labelPadding: const EdgeInsets.symmetric(vertical: 12),
                          fillColor: context.background,
                          tabController: tabController,
                          tabList: const ['Корзина', 'Предзаказы'],
                        ),
                      ),
                    ),
                    ordersState.whenOrNull(
                      ready: (isMoreLoading,orders,preorders) {
                        if (orders.isEmpty) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(24),
                              child: Text("Список заказов пуст..."),
                            ),
                          );
                        }

                        return ordersState.whenOrNull(
                          ready: (isMoreLoading,orders,preorders) => Padding(
                            padding: const EdgeInsets.all(12),
                            child: SizedBox(
                              width: context.width * .33,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                ],
                              ),
                            ),
                          ),
                        ) ?? const SizedBox();},) ?? const SizedBox()
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  OrdersView(),
                  PreordersView(),
                ],
              )
            ),
          ],
        ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrdersBloc>(),
        child: this,
      );
}
