import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
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
    final cartBloc = context.read<CartBloc>();
    final state = useBlocBuilder(cartBloc);

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
                child: SizedBox(
                  width: 35,
                  child: Stack(
                    children: [
                      Icon(
                        tabsRouter.activeIndex == index
                            ? bloc.navbarItems[index].activeIcon
                            : bloc.navbarItems[index].icon,
                        color: tabsRouter.activeIndex == index
                            ? context.primary
                            : context.theme.iconTheme.color,
                      ),
                      index == 2
                          ? state.whenOrNull(
                                  ready: (products, price, isMoreLoading) =>
                                      products.isEmpty
                                          ? const SizedBox(
                                              height: 17,
                                              width: 17,
                                            )
                                          : Positioned(
                                              top: 0,
                                              left: 15,
                                              child: Container(
                                                height: 17,
                                                width: 17,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                constraints:
                                                    const BoxConstraints(
                                                  minWidth: 17,
                                                  minHeight: 17,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(0.5),
                                                  child: Text(
                                                    '${products.length == 0 ? "" : products.length}',
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            )) ??
                              const SizedBox(
                                height: 17,
                                width: 17,
                              )
                          : const SizedBox()
                    ],
                  ),
                ),
              ),
              label: '',
            ),
          ),
          onTap: (value) {
            bloc.add(NavbarEvent.changeIndex(value));
          },
        ));
  }
}
