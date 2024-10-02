import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
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
                  print(v!.length);
                  return state.tabIndex == 0 ? v?.trim().isEmpty ?? true
                      ? 'Поле не может быть пустым'
                      : v!.length == 19
                      ? null
                      : 'Номер должен содержать не менее 12-ти цифр'
                      : v?.trim().isEmpty ?? true
                      ? 'Поле не может быть пустым'
                      : v!.length == 9
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
                return state.tabIndex == 0 ? v?.trim().isEmpty ?? true
                    ? 'Поле не может быть пустым'
                    : v!.length == 12
                    ? null
                    : 'Номер должен содержать не менее 12-ти цифр'
                    : v?.trim().isEmpty ?? true
                    ? 'Поле не может быть пустым'
                    : v!.length == 9
                    ? null
                    : 'Номер должен содержать не менее 9-ти цифр';
              },
              hint: 'Введите номер',
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
        ],
      ),
    );
  }
}
