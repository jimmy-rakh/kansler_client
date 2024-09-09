import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.height * .3,
        child: Image.asset("assets/images/logo.png"));
  }
}
