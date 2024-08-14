import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/router.dart';
import '../../features/auth/presentation/screens/auth/bloc/auth_bloc.dart';


class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

    if (authBloc.state == const AuthState.authenticated()) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute()).then((value) => resolver.next(true));
    }
  }
}
