import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:new_version_plus/new_version_plus.dart';
import '../../../../app/router.dart';
import '../widgets/scaffold_with_navbar.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    final newVersion = NewVersionPlus(
      iOSId: 'uz.kansler.app',
      androidId: 'uz.kansler.app',
    );

    advancedStatusCheck(newVersion);
    super.initState();
  }

  advancedStatusCheck(NewVersionPlus newVersion) async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      debugPrint(status.releaseNotes);
      debugPrint(status.appStoreLink);
      debugPrint(status.localVersion);
      debugPrint(status.storeVersion);
      debugPrint(status.canUpdate.toString());

      if (!status.canUpdate) return;

      newVersion.showUpdateDialog(
        context: context,
        versionStatus: status,
        dialogTitle: 'Обновите приложение',
        dialogText: 'Мы обновили приложение для вашего удобства',
        updateButtonText: 'Обновить',
        launchModeVersion: LaunchModeVersion.external,
        allowDismissal: false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: AutoTabsRouter.builder(
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
            }),
      ),
    );
  }
}
