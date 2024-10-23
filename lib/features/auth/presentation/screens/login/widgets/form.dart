import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:url_launcher/link.dart';
import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/widgets/app_card.dart';
import '../../../../../../core/widgets/app_text_field.dart';
import '../bloc/login_bloc.dart';
import 'dart:html' as html;

class LoginFormWidget extends HookWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    final state = useBlocBuilder(bloc);
    final tabController = useTabController(initialLength: 2);

    useEffect(() {
      bloc.add(LoginEvent.init(tabController));
      return null;
    }, const []);

    return Form(
      key: bloc.formKey,
      child: Column(
        children: [
          AppTabBar(
            tabController: tabController,
            tabList: const ['Физ. лицо', 'Юр. лицо'],
            indicatorPadding: EdgeInsets.zero,
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            mainRadius: 0,
          ),
          verticalSpace16,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.tabIndex == 0
                    ? 'Введите номер телефона'
                    : 'Введите инн/пнфл',
              ),
              verticalSpace10,
              AppTextField(
                radius: 0,
                textInputFormatter: [
                  state.tabIndex == 0
                      ? MaskTextInputFormatter(
                      mask: '+998 (##) ### ## ##',
                      filter: {"#": RegExp(r'[0-9]')})
                      : MaskedInputFormatter('######################')
                ],
                validator: (v) {
                  return state.tabIndex == 0 ? v?.trim().isEmpty ?? true
                      ? 'Поле не может быть пустым'
                      : v!.length >= 19
                      ? null
                      : 'Номер должен содержать не менее 12-ти цифр'
                      : v?.trim().isEmpty ?? true
                      ? 'Поле не может быть пустым'
                      : v!.length >= 9
                      ? null
                      : 'Номер должен содержать не менее 9-ти цифр';
                },
                hint: state.tabIndex == 0 ? '+998 ** *** ** **' : 'инн/пнфл',
                fieldController: bloc.valueController,
                focusNode: bloc.loginFocus,
                prefix: const Icon(KazeIcons.profileBold),
                textInputType: TextInputType.phone,
                hintStyle: context.bodyLarge!.copyWith(
                  color: context.colorScheme.inverseSurface,
                ),
              ),
            ],
          ),
          if (state.tabIndex == 1 &&
              !state.hasPass &&
              state.requestId != null &&
              bloc.valueController.text.isNotEmpty) ...[
            verticalSpace12,
            AppTextField(
              validator: (v) {
                return state.tabIndex == 1 ? v?.trim().isEmpty ?? true
                    ? 'Поле не может быть пустым'
                    : v!.length >= 19
                    ? null
                    : 'Номер должен содержать не менее 12-ти цифр'
                    : v?.trim().isEmpty ?? true
                    ? 'Поле не может быть пустым'
                    : v!.length >= 9
                    ? null
                    : 'Номер должен содержать не менее 9-ти цифр';
              },
              hint: '+998 ** *** ** **',
              textInputFormatter: [
                state.tabIndex == 1
                    ? MaskTextInputFormatter(
                    mask: '+998 (##) ### ## ##',
                    filter: {"#": RegExp(r'[0-9]')})
                    : MaskedInputFormatter('######################')
              ],
              fieldController: bloc.phoneController,
              prefix: const Icon(Icons.phone),
              textInputType: TextInputType.number,
              hintStyle: context.bodyLarge!.copyWith(
                color: context.colorScheme.inverseSurface,
              ),
            ),
          ],
          if (state.hasPass) ...[
            verticalSpace12,
            AppTextField(
              radius: 0,
              hint: 'Введите логин',
              fieldController: bloc.usernameController,
              prefix: const Icon(KazeIcons.profileBold),
              hintStyle: context.bodyLarge!.copyWith(
                color: context.colorScheme.inverseSurface,
              ),
            ),
            verticalSpace12,
            AppTextField(
              hint: 'Введите пароль',
              fieldController: bloc.passController,
              prefix: const Icon(KazeIcons.lockBold),
              obscureText: state.showPass,
              suffix: IconButton(
                onPressed: () => bloc.add(const LoginEvent.showPassToggle()),
                icon: Icon(
                  state.showPass
                      ? KazeIcons.eyeSlashOutline
                      : KazeIcons.eyeOutline,
                ),
              ),
              hintStyle: context.bodyLarge!.copyWith(
                color: context.colorScheme.inverseSurface,
              ),
            ),
          ],
          if (state.status == LoginStatus.initial) ...[
            verticalSpace12,
            Visibility(
              visible: state.error != null,
              child: Text(
                state.error ?? '',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
          if (state.error != null) ...[
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
    );
  }
}
