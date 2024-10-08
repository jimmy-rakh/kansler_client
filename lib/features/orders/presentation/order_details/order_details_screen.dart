import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_button.dart';
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
    return SelectionArea(
      child: Scaffold(
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1300),
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: false,
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton.filled(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(context.cardColor),
                      ),
                      onPressed: router.popForced,
                      icon: const Icon(KazeIcons.arrowLeftOutline),
                    ),
                  ),
                  leadingWidth: 58,
                  title: Text(type == CheckoutType.order ? 'Заказ № $id' : 'Предзаказ № $id'),
                ),
                body: context.isSmall
                    ? state.whenOrNull(
                          ready: (order, orders, isMoring, id) => ListView(
                            padding: const EdgeInsets.all(16),
                            children: [
                              AppCard(
                                width: double.maxFinite,
                                borderRadius: 4,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                fillColor: context.cardColor,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Дата'),
                                        order?.createdAt == null
                                            ? const SizedBox()
                                            : Text(
                                                DateFormat('dd.MM.yyyy, kk:mm')
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
                                        borderRadius: 4,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (order?.agent != null)
                                              Text(
                                                'Заказ создан агентом\nАгент : ${order?.organizationOrders![index].address?.agent?.name!}',
                                              ),
                                            if (order?.agent != null)
                                              verticalSpace12,
                                            Text(
                                                'Тип оплаты : ${order?.paymentType == "byTransfer" ? "Перечислением" : order?.paymentType == "byCash" ? "Наличными" : order?.paymentType == "byCard" ? "Картой" : ""}'),
                                            verticalSpace5,
                                            Text(
                                                'Способ получение : ${order?.deliveryType == "pickup" ? "Самовывоз" : order?.deliveryType == "delivery" ? "Доставка" : ""}'),
                                            verticalSpace5,
                                            const Divider(
                                              color: Colors.grey,
                                            ),
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
                                            verticalSpace10,
                                            AppCard(
                                              onTap: () {
                                                bloc.add(
                                                    OrderDetailsEvent.toDetails(
                                                        order!
                                                            .organizationOrders![
                                                                index]
                                                            .id,
                                                        order.organizationOrders![index].organization,type));
                                              },
                                              borderRadius: 8,
                                              fillColor: context.background,
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
                                            ),
                                            verticalSpace10,
                                            order?.rating == null
                                                ? AppCard(
                                                    borderRadius: 8,
                                                    width: double.maxFinite,
                                                    fillColor:
                                                        context.background,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Ваш менеджер:  ${order?.organizationOrders![index].address?.agent?.name ?? ""}",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                          verticalSpace10,
                                                          const Text(
                                                            "Оцените пожалуйста\nуровень обслуживание менеджера\nдля улучшения качества работы",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          verticalSpace30,
                                                          RatingBar.builder(
                                                            initialRating: 2.5,
                                                            minRating: 1,
                                                            direction:
                                                                Axis.horizontal,
                                                            allowHalfRating:
                                                                true,
                                                            itemCount: 5,
                                                            itemPadding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        4.0),
                                                            itemBuilder:
                                                                (context, _) =>
                                                                    const Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            onRatingUpdate:
                                                                (rating) {
                                                              bloc.add(OrderDetailsEvent
                                                                  .updateRating(
                                                                      rating,
                                                                      order!
                                                                          .id));
                                                            },
                                                          ),
                                                          verticalSpace30,
                                                          AppButton(
                                                            animate: true,
                                                            width: double
                                                                .maxFinite,
                                                            fillColor: context
                                                                .primaryColorLight,
                                                            borderRadius: 8,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12),
                                                            text: const Text(
                                                                "Отправить оценку"),
                                                            onPressed: () {
                                                              bloc.add(OrderDetailsEvent
                                                                  .fetchOrder(
                                                                      order!.id,
                                                                      type));
                                                            },
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : AppCard(
                                                    borderRadius: 8,
                                                    width: double.maxFinite,
                                                    fillColor:
                                                        context.background,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "Ваш менеджер:  ${order?.organizationOrders![index].address?.agent?.name ?? ""}",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                          verticalSpace10,
                                                          const Text(
                                                            "Ваша оценка",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          verticalSpace30,
                                                          RatingBarIndicator(
                                                            rating: double
                                                                .parse(order!
                                                                    .rating
                                                                    .toString()),
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    const Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            itemCount: 5,
                                                            itemSize: 50.0,
                                                            direction:
                                                                Axis.horizontal,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
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
                              width: context.isDesktop
                                  ? 370
                                  : context.isSmall
                                      ? context.width
                                      : context.isTablet
                                          ? context.width * .38
                                          : context.width * .3,
                              height: context.height,
                              decoration:
                                  BoxDecoration(color: context.cardColor),
                              child: state.whenOrNull(
                                    ready: (order, orders, isMoring, id) =>
                                        ListView(
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text('Дата'),
                                                  Text(DateFormat(
                                                          'dd.MM.yyyy, kk:mm')
                                                      .format(
                                                    DateTime.parse(
                                                            order!.createdAt)
                                                        .toLocal(),
                                                  ))
                                                ],
                                              ),
                                              verticalSpace12,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                            order.organizationOrders?.length ??
                                                0,
                                            (index) => AppCard(
                                                  width: double.maxFinite,
                                                  fillColor: context.background,
                                                  margin: const EdgeInsets.only(
                                                      top: 24),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 12,
                                                      horizontal: 16),
                                                  borderRadius: 4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Организация: ${order.organizationOrders![index].organization.name!}',
                                                      ),
                                                      Text(
                                                        'Сумма: ${currencyFormatter.format((order.organizationOrders![index].price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                                ? AppColors
                                                                    .green
                                                                : order.organizationOrders![index].status ==
                                                                        "Отклонен"
                                                                    ? AppColors
                                                                        .red
                                                                    : AppColors
                                                                        .primary),
                                                      ),
                                                      verticalSpace10,
                                                      AppCard(
                                                        onTap: () {
                                                          context.isSmall
                                                              ? bloc.add(OrderDetailsEvent.toDetails(
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
                                                                  OrderDetailsEvent
                                                                      .fetch(
                                                                  id: order
                                                                      .organizationOrders![
                                                                          index]
                                                                      .id,
                                                                  type: type,
                                                                ));
                                                        },
                                                        borderRadius: 4,
                                                        fillColor:
                                                            context.cardColor,
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
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
                                                      ),
                                                      verticalSpace10,
                                                      AppCard(
                                                        borderRadius: 4,
                                                        width: double.maxFinite,
                                                        fillColor:
                                                            context.cardColor,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Ваш менеджер:  ${order.organizationOrders![index].address?.agent?.name ?? ""}",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                              verticalSpace10,
                                                              const Text(
                                                                "Оцените пожалуйста\nуровень обслуживание менеджера\nдля улучшения качества работы",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              verticalSpace30,
                                                              RatingBar.builder(
                                                                initialRating:
                                                                    2.5,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    true,
                                                                itemCount: 5,
                                                                itemPadding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                itemBuilder:
                                                                    (context,
                                                                            _) =>
                                                                        const Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .amber,
                                                                ),
                                                                onRatingUpdate:
                                                                    (rating) {
                                                                  print(rating);
                                                                },
                                                              ),
                                                              verticalSpace30,
                                                              AppButton(
                                                                animate: true,
                                                                width: double
                                                                    .maxFinite,
                                                                fillColor: context
                                                                    .primaryColorLight,
                                                                borderRadius: 8,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        12),
                                                                text: const Text(
                                                                    "Отправить оценку"),
                                                              onPressed: () {
                                                              bloc.add(OrderDetailsEvent
                                                                  .fetchOrder(
                                                                      order!.id,
                                                                      type));
                                                            },
                                                              )
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
                          SizedBox(
                            width: context.isDesktop
                                ? 920
                                : context.isTablet
                                    ? context.width * .6
                                    : context.width * .67,
                            child: state.whenOrNull(
                                  ready: (order, orders, isMoring, id) =>
                                      ListView.separated(
                                    controller: bloc.scrollController,
                                    padding: const EdgeInsets.all(16),
                                    itemBuilder: (context, index) =>
                                        ProductCard.list(
                                            cartProduct: orders?[index],
                                            fieldController:
                                                TextEditingController(),
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
                      )),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrderDetailsBloc>()
          ..add(OrderDetailsEvent.fetchOrder(id!, type)),
        child: this,
      );
}
