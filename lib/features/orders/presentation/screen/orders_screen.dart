import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/features/orders/presentation/screen/widgets/order_card.dart';

import '../../../../app/di.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/appbar.dart';
import 'bloc/orders_bloc.dart';

@RoutePage()
class OrdersScreen extends HookWidget implements AutoRouteWrapper {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OrdersBloc>();
    final state = useBlocBuilder(bloc);

    return Scaffold(
        appBar: const AppBarWidget(
          preferredSize: Size.fromHeight(60),
          showLeading: false,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Заказы",
            ),
          ),
        ),
        body: state.when(
          loadInProgress: () => Center(
            child: SvgPicture.asset(AppIllustrations.emptyOrders),
          ),
          ready: (orders, isMoreLoading) => RefreshIndicator.adaptive(
            onRefresh: () async => bloc.add(const OrdersEvent.fetchOrders()),
            child: ListView.separated(
              controller: bloc.scrollController,
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
              itemCount: orders.length,
              itemBuilder: (BuildContext _, index) {
                // final order = viewModel.userOrders!.results![index];
                return OrderCard(
                  ordersDto: orders[index],
                  onTap: (s) => bloc.add(OrdersEvent.toOrder(s)),
                );
              },
              separatorBuilder: (BuildContext _, index) {
                return verticalSpace12;
              },
            ),
          ),
        ));
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrdersBloc>(),
        child: this,
      );
}
