import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../data/models/orders_dto.dart';

class SuccessOrderView extends StatelessWidget {
  const SuccessOrderView({super.key, required this.ordersDto});

  final OrdersDto ordersDto;

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(32, context.height * .2, 32, 42),
        child: Center(
          child: SizedBox(
            width:context.isSmall ? context.width * .9 : context.width * .5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIllustrations.checkSuccess,
                  height: 120,
                  color: Theme.of(context).colorScheme.onBackground,
                  // colorFilter: ColorFilter.mode(
                  //   context.colorScheme.background,
                  //   BlendMode.color,
                  // ),
                ),
                verticalSpace20,
                Text('orders.success_order'.tr(),
                    style: Theme.of(context).textTheme.titleMedium),
                verticalSpace16,
                Text(
                    'orders.success_order_description'
                        .tr(args: [ordersDto.id.toString()]),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.grey,
                        )),
                verticalSpace45,
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: context.colorScheme.onBackground,
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Text('common.date'.tr()),
                        const Spacer(),
                        Text(DateFormat('dd.MM.yyyy, kk:mm').format(
                          DateTime.parse(ordersDto.createdAt).toLocal(),
                        ))
                      ],
                    ),
                    verticalSpace10,
                    Divider(
                      color: context.colorScheme.onBackground,
                    ),
                    verticalSpace5,
                    Row(
                      children: [
                        Text('checkout.total'.tr()),
                        const Spacer(),
                        Text(
                          '${currencyFormatter.format(ordersDto.price).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                        )
                      ],
                    ),
                  ]),
                ),
                const Spacer(),
                AppButton(
                  text: 'common.continue'.tr(),
                  textStyle: Theme.of(context).textTheme.bodyLarge!,
                  width: double.maxFinite,
                  onPressed: () => Navigator.pop(context),
                  textColor: AppColors.white,
                  fillColor: AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
