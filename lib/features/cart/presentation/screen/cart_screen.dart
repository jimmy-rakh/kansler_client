import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/cart.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/cart_sum.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/preorders.dart';
import 'package:kansler/features/cart/presentation/screen/widgets/preorders_sum.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/keyboard_escape.dart';

@RoutePage()
class CartScreen extends HookWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    return KeyboardEscape(
      child: Scaffold(
        extendBody: false,
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget(
          preferredSize: const Size.fromHeight(60),
          showLeading: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: AppTabBar(
              tabController: tabController,
              tabList: const ['Корзина', 'Предзаказы'],
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            CartTabWidget(),
            PreordersTabWidget(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: TabBarView(
            controller: tabController,
            children: const [
              CartSumWidget(),
              PreordersSumWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
