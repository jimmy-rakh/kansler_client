import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/actions.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/form.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/header.dart';

import '../../../../../app/di.dart';
import '../../../../../core/constants/spaces.dart';
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
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(top: 60, child: AutoLeadingButton()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegisterHeaderWidget(),
                verticalSpace12,
                RegisterFormWidget(),
                verticalSpace12,
                RegisterActionWidget(),
              ],
            ),
          ),
        ],
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
