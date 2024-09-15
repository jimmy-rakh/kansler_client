import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
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
import '../../../../core/style/colors.dart';
import '../../../../core/widgets/app_card.dart';

import '../../../product/presentation/widgets/product_card.dart';
import 'bloc/order_details_bloc.dart';

@RoutePage()
class OrderDetailsScreen extends HookWidget implements AutoRouteWrapper {
  const OrderDetailsScreen({
    super.key,
    @PathParam('id') this.id,
    this.type = CheckoutType.order,
  });

  final int? id;
  final CheckoutType type;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OrderDetailsBloc>();
    final state = useBlocBuilder(bloc);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
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
          title: Text('Заказ № $id'),
        ),
        body: context.isSmall
            ? state.whenOrNull(
                  ready: (order, orders, isMoring, id) => ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      AppCard(
                        width: double.maxFinite,
                        borderRadius: 12,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        fillColor: context.cardColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Дата'),
                                order?.createdAt == null
                                    ? const SizedBox()
                                    : Text(
                                        DateFormat('dd.MM.yyyy, kk:mm').format(
                                        DateTime.parse(order!.createdAt)
                                            .toLocal(),
                                      ))
                              ],
                            ),
                            verticalSpace12,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Сумма'),
                                order?.price == null
                                    ? const SizedBox()
                                    : Text(
                                        '${currencyFormatter.format(order!.price).replaceAll(".", " ")} ${'common.sum'.tr()}')
                              ],
                            )
                          ],
                        ),
                      ),
                      ...List.generate(
                          order?.organizationOrders?.length ?? 0,
                          (index) => AppCard(
                                width: double.maxFinite,
                                margin: const EdgeInsets.only(top: 24),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                onTap: () {
                                  bloc.add(OrderDetailsEvent.toDetails(
                                      order!.organizationOrders![index].id,
                                      order.organizationOrders![index]
                                          .organization,type));
                                },
                                borderRadius: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Организация: ${order?.organizationOrders![index].organization.name!}',
                                    ),
                                    // verticalSpace12,
                                    // Text(
                                    //     'Торговая точка:\n${order.organizationOrders![index].address.name!}\n${order.organizationOrders![index].address.region}'),
                                    // verticalSpace5,
                                    // Text(
                                    //     'Телефон для связи:\n${order.organizationOrders![index].address.phoneNumbers}'),
                                    // verticalSpace5,
                                    // const Divider(
                                    //   color: Colors.grey,
                                    // ),
                                    Text(
                                      'Сумма: ${currencyFormatter.format((order?.organizationOrders![index].price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    verticalSpace10,
                                    Text(
                                      order?.organizationOrders![index]
                                                  .status ==
                                              null
                                          ? 'Заказ создан'
                                          : '${order?.organizationOrders![index].status}',
                                      style: TextStyle(
                                          color: order
                                                      ?.organizationOrders![
                                                          index]
                                                      .status ==
                                                  "Оформлен"
                                              ? AppColors.green
                                              : order
                                                          ?.organizationOrders![
                                                              index]
                                                          .status ==
                                                      "Отклонен"
                                                  ? AppColors.red
                                                  : AppColors.primary),
                                    ),
                                  ],
                                ),
                              ))
                    ],
                  ),
                ) ??
                const Center(
                  child: CupertinoActivityIndicator(),
                )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: context.width * .33,
                      height: context.height,
                      decoration: BoxDecoration(color: context.cardColor),
                      child: state.whenOrNull(
                            ready: (order, orders, isMoring, id) => ListView(
                              padding: const EdgeInsets.all(16),
                              children: [
                                AppCard(
                                  width: double.maxFinite,
                                  borderRadius: 4,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 12),
                                  fillColor: context.background,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Дата'),
                                          Text(DateFormat('dd.MM.yyyy, kk:mm')
                                              .format(
                                            DateTime.parse(order!.createdAt)
                                                .toLocal(),
                                          ))
                                        ],
                                      ),
                                      verticalSpace12,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Сумма'),
                                          Text(
                                              '${currencyFormatter.format(order.price).replaceAll(".", " ")} ${'common.sum'.tr()}')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                ...List.generate(
                                    order.organizationOrders?.length ?? 0,
                                    (index) => AppCard(
                                          width: double.maxFinite,
                                          fillColor: context.background,
                                          margin:
                                              const EdgeInsets.only(top: 24),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          onTap: () {
                                            context.isSmall
                                                ? bloc.add(
                                                    OrderDetailsEvent.toDetails(
                                                        order
                                                            .organizationOrders![
                                                                index]
                                                            .id,
                                                        order
                                                            .organizationOrders![
                                                                index]
                                                            .organization,
                                                        type))
                                                : bloc.add(
                                                    OrderDetailsEvent.fetch(
                                                    id: order
                                                        .organizationOrders![
                                                            index]
                                                        .id,
                                                    type: type,
                                                  ));
                                          },
                                          borderRadius: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Организация: ${order.organizationOrders![index].organization.name!}',
                                              ),
                                              // verticalSpace12,
                                              // Text(
                                              //     'Торговая точка:\n${order.organizationOrders![index].address.name!}\n${order.organizationOrders![index].address.region}'),
                                              // verticalSpace5,
                                              // Text(
                                              //     'Телефон для связи:\n${order.organizationOrders![index].address.phoneNumbers}'),
                                              // verticalSpace5,
                                              // const Divider(
                                              //   color: Colors.grey,
                                              // ),
                                              Text(
                                                'Сумма: ${currencyFormatter.format((order.organizationOrders![index].price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              verticalSpace10,
                                              Text(
                                                order.organizationOrders![index]
                                                            .status ==
                                                        null
                                                    ? 'Заказ создан'
                                                    : '${order.organizationOrders![index].status}',
                                                style: TextStyle(
                                                    color: order
                                                                .organizationOrders![
                                                                    index]
                                                                .status ==
                                                            "Оформлен"
                                                        ? AppColors.green
                                                        : order
                                                                    .organizationOrders![
                                                                        index]
                                                                    .status ==
                                                                "Отклонен"
                                                            ? AppColors.red
                                                            : AppColors
                                                                .primary),
                                              ),
                                              verticalSpace10,
                                              AppCard(
                                                borderRadius: 4,
                                                fillColor: context.cardColor,
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("Продукты"),
                                                      Icon(Icons
                                                          .arrow_forward_ios),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                              ],
                            ),
                          ) ??
                          const Center(
                            child: CupertinoActivityIndicator(),
                          ),
                    ),
                  ),
                  Expanded(
                    child: state.whenOrNull(
                          ready: (order, orders, isMoring, id) =>
                              ListView.separated(
                            controller: bloc.scrollController,
                            padding: const EdgeInsets.all(16),
                            itemBuilder: (context, index) => ProductCard.list(
                                cartProduct: orders?[index],
                                fieldController: TextEditingController(),
                                showActions: false,
                                onPressed: () {},
                                onCart: (type) {}),
                            separatorBuilder: (context, index) =>
                                verticalSpace12,
                            itemCount: orders?.length ?? 0,
                          ),
                        ) ??
                        const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                  )
                ],
              ));
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrderDetailsBloc>()
          ..add(OrderDetailsEvent.fetchOrder(id!, type)),
        child: this,
      );
}
