import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../bloc/login_bloc.dart';

class LoginActionWidget extends HookWidget {
  const LoginActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      children: [
        AppButton(
          text: state.hasPass ? 'Войти' : 'Продолжить',
          isLoading: state.isBusy,
          loadingColor: AppColors.white,
          fillColor: context.primary,
          padding: const EdgeInsets.symmetric(vertical: 12),
          borderRadius: 8,
          textStyle: context.titleSmall!.copyWith(
            color: context.colorScheme.onPrimary,
          ),
          onPressed: () => bloc.add(const LoginEvent.login()),
        ),
      ],
    );
  }
}
