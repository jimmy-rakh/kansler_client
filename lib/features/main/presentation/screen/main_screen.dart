import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../widgets/scaffold_with_navbar.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
        routes: const [
          HomeRoute(),
          CategoriesWrapperRoute(),
          CartRoute(),
          OrdersRoute(),
          ProfileRoute(),
        ],
        homeIndex: 0,
        builder: (context, children, tabsRouter) {
          return ScaffoldWithNavbar(
            tabsRouter: tabsRouter,
            children: children,
          );
        });
  }
}
