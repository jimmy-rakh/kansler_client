import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../product/presentation/widgets/product_card.dart';
import '../../../profile/data/models/address_dto.dart';
import 'bloc/order_organization_bloc.dart';

@RoutePage()
class OrderOrganizationScreen extends HookWidget implements AutoRouteWrapper {
  const OrderOrganizationScreen({
    super.key,
    @PathParam('id') required this.id,
    required this.organization,
    this.type = CheckoutType.order,
  });

  final int id;
  final OrganizationDto organization;
  final CheckoutType type;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OrderOrganizationBloc>();
    final state = useBlocBuilder(bloc);

    return Scaffold(
      appBar: AppBarWidget(
        preferredSize: const Size.fromHeight(60),
        showLeading: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(context.cardColor),
            ),
            onPressed: router.popForced,
            icon: const Icon(KazeIcons.arrowLeftOutline),
          ),
        ),
        leadingWidth: 58,
        child: const Text("Продукты"),
      ),
      body: state.whenOrNull(
            ready: (orders, isMoring, id) => ListView.separated(
              controller: bloc.scrollController,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => ProductCard.list(
                  cartProduct: orders[index],
                  fieldController: TextEditingController(),
                  showActions: false,
                  onPressed: () {},
                  onCart: (type) {}),
              separatorBuilder: (context, index) => verticalSpace12,
              itemCount: orders.length,
            ),
          ) ??
          const Center(
            child: CupertinoActivityIndicator(),
          ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrderOrganizationBloc>()
          ..add(OrderOrganizationEvent.fetch(id: id, type: type)),
        child: this,
      );
}
