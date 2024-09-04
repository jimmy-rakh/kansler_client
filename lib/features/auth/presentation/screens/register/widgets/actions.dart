import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../../core/enums/register_step.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../bloc/register_bloc.dart';

class RegisterActionWidget extends HookWidget {
  const RegisterActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterBloc>();
    final state = useBlocBuilder(bloc);

    return Column(
      children: [
        state.when(
          ready: (
            step,
            showPass,
            showRepeatedPass,
            isLoading,
            requestId,
            error,
            address,
            addressId,
          ) =>
              AppButton(
            text: step == RegisterStep.inputInn
                ? 'Продолжить'
                : 'Зарегистрироваться',
            isLoading: isLoading,
            loadingColor: context.onPrimary,
            fillColor: context.primary,
            padding: const EdgeInsets.symmetric(vertical: 12),
            borderRadius: 0,
            textStyle: context.titleSmall!.copyWith(
              color: context.colorScheme.onPrimary,
            ),
            onPressed: () => bloc.add(const RegisterEvent.register()),
          ),
        ),
      ],
    );
  }
}
