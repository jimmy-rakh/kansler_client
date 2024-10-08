import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/spaces.dart';
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
        if (state.leftSeconds != 0) ...[
          Text('Кнопка будет активна через ${state.leftSeconds} секунд'),
          verticalSpace10,
        ],
        AppButton(
          text: state.hasPass ? 'Войти' : 'Продолжить',
          isLoading: state.isBusy,
          loadingColor: AppColors.white,
          isActive: state.leftSeconds == 0,
          fillColor: context.primary,
          padding: const EdgeInsets.symmetric(vertical: 12),
          borderRadius: 0,
          textStyle: context.titleSmall!.copyWith(
            color: context.colorScheme.onPrimary,
          ),
          onPressed: () => bloc.add(const LoginEvent.login()),
        ),
      ],
    );
  }
}
