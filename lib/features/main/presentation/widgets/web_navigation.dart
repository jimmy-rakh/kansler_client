import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';
import '../../../home/presentation/screen/widgets/appbar.dart';
import '../bloc/navbar_bloc.dart';

class WebNavigation extends HookWidget {
  const WebNavigation({
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

    return  AppCard(
      fillColor: context.theme.cardColor,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 20),
                    child: Image.asset("assets/images/logo.png",width: context.width * .08,),
                  ),
                  AppCard(
                      fillColor: context.background,
                      width:context.isDesktop ? 500: context.width * .38,
                      borderRadius: 4,
                      child: const Padding(
                        padding: EdgeInsets.all(2),
                        child: HomeAppBar(),
                      )),
                ],
              ),
              SizedBox(
                width:context.isDesktop ? 500 : context.width * .38,
                child: BottomNavigationBar(
                  backgroundColor: context.theme.cardColor,
                  currentIndex: tabsRouter.activeIndex,
                  elevation: 0,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  enableFeedback: false,
                  selectedFontSize: 12,
                  unselectedFontSize: 12,
                  fixedColor: context.theme.iconTheme.color,
                  unselectedItemColor: context.theme.iconTheme.color,
                  type: BottomNavigationBarType.fixed,
                  items: List.generate(
                    bloc.navbarItems.length,
                    (index) => BottomNavigationBarItem(
                      icon: Icon(
                        tabsRouter.activeIndex == index
                            ? bloc.navbarItems[index].activeIcon
                            : bloc.navbarItems[index].icon,
                        color: tabsRouter.activeIndex == index
                            ? context.primary
                            : context.theme.iconTheme.color,
                      ),
                      label: bloc.navbarItems[index].label,
                    ),
                  ),
                  onTap: (value) => bloc.add(NavbarEvent.changeIndex(value)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
