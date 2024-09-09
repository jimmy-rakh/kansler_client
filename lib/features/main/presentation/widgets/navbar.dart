import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import '../bloc/navbar_bloc.dart';

class BottomBar extends HookWidget {
  const BottomBar({
    super.key,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NavbarBloc>();

    useEffect(() {
      bloc.add(NavbarEvent.init(tabsRouter));

      return null;
    }, [bloc]);

    return Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: context.theme.cardColor,
          currentIndex: tabsRouter.activeIndex,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          items: List.generate(
            bloc.navbarItems.length,
            (index) => BottomNavigationBarItem(
              icon: Badge(
                isLabelVisible: false,
                child: Icon(
                  tabsRouter.activeIndex == index
                      ? bloc.navbarItems[index].activeIcon
                      : bloc.navbarItems[index].icon,
                  color: tabsRouter.activeIndex == index
                      ? context.primary
                      : context.theme.iconTheme.color,
                ),
              ),
              label: '',
            ),
          ),
          onTap: (value) => bloc.add(NavbarEvent.changeIndex(value)),
        ));
  }
}
