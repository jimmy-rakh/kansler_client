import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kansler/features/auth/presentation/screens/login/widgets/actions.dart';
import 'package:kansler/features/auth/presentation/screens/login/widgets/form.dart';
import 'package:kansler/features/auth/presentation/screens/login/widgets/header.dart';

import '../../../../../app/di.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/keyboard_escape.dart';
import 'bloc/login_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardEscape(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned(top: 60, child: AutoLeadingButton()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: const [
                  verticalSpace60,
                  verticalSpace35,
                  LoginHeaderWidget(),
                  verticalSpace60,
                  LoginFormWidget(),
                  verticalSpace12,
                  LoginActionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: this,
      );
}
