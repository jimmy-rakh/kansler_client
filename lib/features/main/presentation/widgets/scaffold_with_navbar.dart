import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(
      {super.key, required this.tabsRouter, required this.children});

  final TabsRouter tabsRouter;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: tabsRouter.activeIndex != 2,
      body: IndexedStack(
        index: tabsRouter.activeIndex,
        children: children,
      ),
      bottomNavigationBar: BottomBar(tabsRouter: tabsRouter),
    );
  }
}
