import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/actions.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/form.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/header.dart';

import '../../../../../app/di.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/keyboard_escape.dart';
import 'bloc/register_bloc.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget implements AutoRouteWrapper {
  const RegisterScreen({
    super.key,
    required this.requestId,
    required this.phone,
    this.inn,
  });

  final String requestId;
  final String phone;
  final String? inn;

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
                children: const[
                  verticalSpace60,
                  verticalSpace35,
                  RegisterHeaderWidget(),
                  verticalSpace35,
                  RegisterFormWidget(),
                  verticalSpace12,
                  RegisterActionWidget(),
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
        create: (context) => getIt<RegisterBloc>()
          ..add(RegisterEvent.init(requestId, phone, inn)),
        child: this,
      );
}
