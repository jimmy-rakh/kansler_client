import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/main/presentation/bloc/navbar_bloc.dart';
import 'package:kansler/features/main/presentation/widgets/web_navigation.dart';

import 'navbar.dart';

class ScaffoldWithNavbar extends HookWidget {
  const ScaffoldWithNavbar(
      {super.key, required this.tabsRouter, required this.children});

  final TabsRouter tabsRouter;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NavbarBloc>();

    useEffect(() {
      bloc.add(NavbarEvent.init(tabsRouter));

      return null;
    }, [bloc]);
    return Scaffold(
      extendBody: tabsRouter.activeIndex != 2,
      appBar: context.isSmall
          ? const PreferredSize(preferredSize: Size.zero, child: SizedBox())
          : PreferredSize(
              preferredSize: Size.fromHeight(context.height * .2),
              child: WebNavigation(tabsRouter: tabsRouter)),
      body: IndexedStack(
        index: tabsRouter.activeIndex,
        children: children,
      ),
      bottomNavigationBar: context.isSmall
          ? BottomBar(tabsRouter: tabsRouter)
          : const IgnorePointer(child: SizedBox.shrink()),
    );
  }
}
