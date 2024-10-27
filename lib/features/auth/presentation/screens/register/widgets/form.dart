import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:url_launcher/link.dart';
import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/widgets/app_card.dart';
import '../../../../../../core/widgets/app_text_field.dart';
import '../bloc/register_bloc.dart';
// import 'dart:html' as html;

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
            address,
            addressId,
          ) =>
              Form(
            key: bloc.formKey,
            child: Column(
              children: [
                verticalSpace12,
                AppTextField(
                  radius: 0,
                  label: 'Номер телефона',
                  floatingLabelStyle: context.bodyLarge,
                  fieldController: bloc.phoneNumberController,
                  prefix: const Icon(Icons.phone),
                  textInputType: TextInputType.number,
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                  readOnly: true,
                ),
                verticalSpace12,
                if (state.addressId == null) ...[
                  AppTextField(
                    radius: 0,
                    floatingLabelStyle: context.bodyLarge,
                    label: bloc.innController.text.isEmpty
                        ? 'ФИО'
                        : 'Наименование компании',
                    validator: (p0) => (p0?.length ?? 0) <=0
                        ? 'Это поле не может быть пустым'
                        : null,
                    fieldController: bloc.nameController,
                    prefix: const Icon(KazeIcons.profileBold),
                    hintStyle: context.bodyLarge!.copyWith(
                      color: context.colorScheme.inverseSurface,
                    ),
                  ),
                ],
                verticalSpace12,
                if (bloc.innController.text.isNotEmpty) ...[
                  verticalSpace12,
                  AppTextField(
                    radius: 0,
                    label: 'Ваш ИНН',
                    floatingLabelStyle: context.bodyLarge,
                    fieldController: bloc.innController,
                    prefix: const Icon(KazeIcons.profileBold),
                    textInputType: TextInputType.number,
                    readOnly: true,
                  ),
                ],
                verticalSpace12,
                AppTextField(
                  radius: 0,
                  floatingLabelStyle: context.bodyLarge,
                  label: 'Логин',
                  validator: (value) {
                    // add your custom validation here.
                    if (value!.isEmpty) {
                      return 'Это поле не может быть пустым';
                    }
                    if (value.length <=4) {
                      return 'Логин должен быть больше 4 символов';
                    }
                  },
                  fieldController: bloc.usernameController,
                  prefix: const Icon(KazeIcons.profileBold),
                  hintStyle: context.bodyLarge!.copyWith(
                    color: context.colorScheme.inverseSurface,
                  ),
                ),
                verticalSpace12,
                AppTextField(
                  radius: 0,
                  label: 'Пароль',
                  floatingLabelStyle: context.bodyLarge,
                  prefix: const Icon(KazeIcons.lockBold),
                  obscureText: showPass,
                  fieldController: bloc.passwordController,
                  validator: (p0) => (p0?.length ?? 0) < 8
                      ? 'Пароль должен быть больше 8 символов'
                      : null,
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
                  radius: 0,
                  label: 'Повторите пароль',
                  prefix: const Icon(KazeIcons.lockBold),
                  floatingLabelStyle: context.bodyLarge,
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
                      Link(
                          uri: Uri.parse('tel:+998935026545'),
                          target: LinkTarget.blank,
                          builder: (BuildContext ctx, FollowLink? openLink) {
                            return ElevatedButton(
                              style: ButtonStyle(
                                elevation: WidgetStateProperty.all(0),
                                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                                foregroundColor: WidgetStateProperty.all(context.onPrimary),
                                overlayColor: WidgetStateProperty.all(Colors.transparent),
                              ),
                              onPressed: openLink,
                              child: AppCard(
                                fillColor: context.background,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: context.isSmall ? context.width : 500,
                                borderRadius: 4,
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppCard(
                                      borderRadius: 12,
                                      fillColor: AppColors.green,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(Icons.phone,color: Colors.white,),
                                      ),
                                    ),
                                    horizontalSpace10,
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Менеджер:  Исломбек Маннанов',style: context.labelMedium?.copyWith(color: Colors.blueAccent),),
                                        verticalSpace5,
                                        Text('Телефон:  +998935026545',style: context.labelMedium?.copyWith(color: Colors.blueAccent),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
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
