import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/widgets/app_text_field.dart';
import '../bloc/register_bloc.dart';

class RegisterFormWidget extends HookWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterBloc>();
    final state = useBlocBuilder(bloc);

    return state.when(
          ready: (
            step,
            showPass,
            showRepetedPass,
            isLoading,
            requestId,
            error,
          ) =>
              Form(
            key: bloc.formKey,
            child: Column(
              children: [
                AppTextField(
                  hint: 'Введите ФИО',
                  fieldController: bloc.nameController,
                  prefix: const Icon(KazeIcons.profileBold),
                  textInputType: TextInputType.number,
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                ),
                verticalSpace12,
                AppTextField(
                  hint: 'Номер телефона',
                  fieldController: bloc.phoneNumberController,
                  prefix: const Icon(Icons.phone),
                  textInputType: TextInputType.number,
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                  readOnly: true,
                ),
                if (bloc.innController.text.isNotEmpty) ...[
                  verticalSpace12,
                  AppTextField(
                    hint: 'Ваш ИНН',
                    fieldController: bloc.innController,
                    prefix: const Icon(KazeIcons.profileBold),
                    textInputType: TextInputType.number,
                    hintStyle: context.bodyLarge!.copyWith(
                      color: context.colorScheme.inverseSurface,
                    ),
                    readOnly: true,
                  ),
                ],
                verticalSpace12,
                AppTextField(
                  hint: 'Введите пароль',
                  prefix: const Icon(KazeIcons.lockBold),
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                  obscureText: showPass,
                  fieldController: bloc.passwordController,
                  suffix: IconButton(
                    onPressed: () =>
                        bloc.add(const RegisterEvent.showPassToggle()),
                    icon: Icon(
                      showPass
                          ? KazeIcons.eyeSlashOutline
                          : KazeIcons.eyeOutline,
                    ),
                  ),
                ),
                verticalSpace12,
                AppTextField(
                  hint: 'Повторно введите пароль',
                  prefix: const Icon(KazeIcons.lockBold),
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                  validator: bloc.secondPasswordValidator,
                  obscureText: showRepetedPass,
                  fieldController: bloc.secondPasswordController,
                  suffix: IconButton(
                    onPressed: () => bloc.add(
                      const RegisterEvent.showRepeatedPassToggle(),
                    ),
                    icon: Icon(
                      showRepetedPass
                          ? KazeIcons.eyeSlashOutline
                          : KazeIcons.eyeOutline,
                    ),
                  ),
                ),
                if (error != null) ...[
                  verticalSpace12,
                  Column(
                    children: [
                      const Text(
                        'Ошибка',
                        style: TextStyle(color: AppColors.red, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace16,
                      Text(
                        'Для получения доступа на сайт, свяжитесь с сотрудником компании:',
                        style: context.theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace16,
                      Text(
                        '+998 78 129 00 44 СГ',
                        style: context.theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '+998 78 129 00 88 ДТ',
                        style: context.theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '+998 78 148 00 44 ГТ',
                        style: context.theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  verticalSpace12,
                ],
              ],
            ),
          ),
        ) ??
        const SizedBox();
  }
}
