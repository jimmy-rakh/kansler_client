import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/cart/presentation/screen/cart_bloc/cart_bloc.dart';
import '../../../../core/style/colors.dart';
import '../../../home/presentation/screen/widgets/appbar.dart';
import '../../../home/presentation/screen/widgets/info_appbar.dart';
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
    final cartBloc = context.read<CartBloc>();
    final state = useBlocBuilder(cartBloc);

    useEffect(() {
      bloc.add(NavbarEvent.init(tabsRouter));

      return null;
    }, [bloc]);

    return AppCard(
      fillColor: context.theme.cardColor,
      child: Center(
        child: Column(
          children: [
            Container(
                color: context.background,
                width: context.width,
                child: const Center(child: InfoAppBar())),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => router.push(const MainRoute()),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child:
                              Image.asset("assets/images/logo.png", width: 150),
                        ),
                      ),
                      AppCard(
                          fillColor: context.background,
                          width: context.isDesktop ? 600 : context.width * .33,
                          showShadow: false,
                          borderRadius: 4,
                          padding: const EdgeInsets.all(2),
                          margin: const EdgeInsets.only(top: 7, left: 7),
                          child: const HomeAppBar()),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: SizedBox(
                      width: context.isDesktop ? 500 : context.width * .38,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          hoverColor: Colors.transparent,
                        ),
                        child: BottomNavigationBar(
                          backgroundColor: context.theme.cardColor,
                          currentIndex: tabsRouter.activeIndex,
                          elevation: 0,
                          showSelectedLabels: true,
                          showUnselectedLabels: true,
                          enableFeedback: false,
                          selectedFontSize: context.isTablet ? 14 : 16,
                          unselectedFontSize: context.isTablet ? 14 : 16,
                          selectedLabelStyle:
                              const TextStyle(color: AppColors.primary),
                          type: BottomNavigationBarType.fixed,
                          items: List.generate(
                            bloc.navbarItems.length,
                            (index) => BottomNavigationBarItem(
                              icon: index == 2
                                  ? state.whenOrNull(
                                          ready: (products, price,
                                                  isMoreLoading) =>
                                              products.isEmpty
                                                  ? const SizedBox(
                                                      height: 18,
                                                      width: 18,
                                                    )
                                                  : Stack(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets
                                                              .only(
                                                              left: 42),
                                                          child: Icon(
                                                            tabsRouter.activeIndex ==
                                                                    index
                                                                ? bloc
                                                                    .navbarItems[
                                                                        index]
                                                                    .activeIcon
                                                                : bloc
                                                                    .navbarItems[
                                                                        index]
                                                                    .icon,
                                                            color: tabsRouter
                                                                        .activeIndex ==
                                                                    index
                                                                ? context.primary
                                                                : context
                                                                    .theme
                                                                    .iconTheme
                                                                    .color,
                                                            size: 18,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 15,
                                                          width: 15,
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 60),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.red,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25),
                                                          ),
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 15,
                                                            minHeight: 15,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0.5),
                                                            child: Text(
                                                              '${products.length == 0 ? "" : products.length}',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 9,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )) ??
                                      const SizedBox(
                                        height: 18,
                                        width: 18,
                                      )
                                  : const SizedBox(
                                      height: 18,
                                      width: 18,
                                    ),
                              label: bloc.navbarItems[index].label,
                            ),
                          ),
                          onTap: (value) =>
                              bloc.add(NavbarEvent.changeIndex(value)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
