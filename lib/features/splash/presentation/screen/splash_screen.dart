import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../app/di.dart';
import '../bloc/splash_bloc.dart';

@RoutePage()
class SplashScreen extends HookWidget implements AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (ctx) => getIt<SplashBloc>(),
        child: this,
      );
}
