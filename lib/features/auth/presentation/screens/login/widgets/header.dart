import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Mirel',
      style: context.titleLarge!.copyWith(
        color: context.primary,
      ),
    );
  }
}
