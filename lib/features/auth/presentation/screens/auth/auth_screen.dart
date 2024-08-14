import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/features/auth/presentation/screens/auth/widgets/appbar.dart';

import '../../../../../core/widgets/appbar.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        preferredSize: Size.fromHeight(60),
        child: AuthAppBar(),
      ),
      body: AutoRouter(),
    );
  }
}
