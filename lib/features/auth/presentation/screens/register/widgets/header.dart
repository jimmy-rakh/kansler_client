import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Kansler',
      style: context.titleLarge!.copyWith(
        color: context.primary,
      ),
    );
  }
}
