import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/widgets/app_text_field.dart';
import '../bloc/login_bloc.dart';


class LoginFormWidget extends HookWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      children: [
        AppTextField(
          hint: 'Введите логин',
          fieldController: bloc.innController,
          prefix: const Icon(KazeIcons.profileBold),
          hintStyle: context.bodyLarge!.copyWith(
            color: context.colorScheme.inverseSurface,
          ),
        ),
        verticalSpace12,
        AppTextField(
          hint: 'Введите пароль',
          fieldController: bloc.passwordController,
          prefix: const Icon(KazeIcons.lockBold),
          obscureText: state.whenOrNull(
                  ready: (isBusy, validated, showPass, error) => !showPass) ??
              false,
          suffix: IconButton(
            onPressed: () => bloc.add(const LoginEvent.showPassToggle()),
            icon: Icon(
              state.whenOrNull(
                          ready: (isBusy, validated, showPass, error) =>
                              showPass) ??
                      false
                  ? KazeIcons.eyeSlashOutline
                  : KazeIcons.eyeOutline,
            ),
          ),
          hintStyle: context.bodyLarge!.copyWith(
            color: context.colorScheme.inverseSurface,
          ),
        ),
        ...state.when(
          ready: (isBusy, validated, showPass, error) => [
            verticalSpace12,
            Visibility(
              visible: error != null,
              child: Text(
                error ?? '',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
