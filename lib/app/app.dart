import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kansler/app/router.dart';

import '../core/style/theme.dart';

class KanslerApp extends StatelessWidget {
  const KanslerApp({super.key});

  ThemeData _getTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        final brightness =
            SchedulerBinding.instance.platformDispatcher.platformBrightness;
        return brightness == Brightness.light
            ? ThemeData.light()
            : ThemeData.dark();

      case ThemeMode.light:
        return ThemeData.light();

      case ThemeMode.dark:
        return ThemeData.dark();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Kansler - Все для офиса',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: router.config(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1),
          ),
          child: child!,
        );
      },
    );
  }
}
