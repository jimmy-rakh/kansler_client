import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';
import '../../../data/models/orders_dto.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.ordersDto,
    required this.onTap,
  });

  final OrdersDto ordersDto;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    return SelectionArea(
      child: GestureDetector(
        onTap: () => onTap(ordersDto.id),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    '№ ${ordersDto.id}',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
                  // Text(
                  //   'common.products_count'.tr(args: [ordersDto.count.toString()]),
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .labelMedium!
                  //       .copyWith(color: Colors.grey),
                  // )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Сумма',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        verticalSpace5,
                        Text(
                          '${currencyFormatter.format(ordersDto.price)} сум',
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                  ),
                  horizontalSpace10,
                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      width: 1,
                      color: AppColors.grey.withOpacity(.5),
                    ),
                  ),
                  horizontalSpace10,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace5,
                        Text(
                            DateFormat('dd.MM.yyyy, kk:mm').format(
                              DateTime.parse(ordersDto.createdAt).toLocal(),
                            ),
                            style: Theme.of(context).textTheme.labelLarge)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Color returnColor() {
    switch (ordersDto.createdAt) {
      case 'NEW':
        return AppColors.primary;
      case 'ACCEPTED':
        return AppColors.actionColor5;
      case 'CANCELED':
        return AppColors.red;
      case 'COMPLETED':
        return AppColors.green;
      default:
        return AppColors.bgDark;
    }
  }
}
