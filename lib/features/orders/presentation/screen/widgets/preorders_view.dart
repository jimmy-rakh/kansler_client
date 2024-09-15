import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/app_illustrations.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/features/orders/presentation/screen/bloc/orders_bloc.dart';
import 'package:kansler/features/orders/presentation/screen/widgets/order_card.dart';

class PreordersView extends HookWidget {
  const PreordersView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OrdersBloc>();
    final state = useBlocBuilder(bloc);
    return state.when(
      loadInProgress: () => Center(
        child: SvgPicture.asset(AppIllustrations.emptyOrders),
      ),
      ready: (isMoreLoading, orders, preorders) {
        if (preorders.isEmpty) {
          return Center(child: SvgPicture.asset(AppIllustrations.emptyOrders));
        }

        return RefreshIndicator.adaptive(
          onRefresh: () async => bloc.add(const OrdersEvent.fetchOrders()),
          child: ListView.separated(
            controller: bloc.scrollController,
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
            itemCount: preorders.length,
            itemBuilder: (BuildContext _, index) {
              // final order = viewModel.userOrders!.results![index];
              return OrderCard(
                ordersDto: preorders[index],
                onTap: (s) => bloc
                    .add(OrdersEvent.toOrder(s, type: CheckoutType.preorder)),
              );
            },
            separatorBuilder: (BuildContext _, index) {
              return verticalSpace12;
            },
          ),
        );
      },
    );
  }
}
