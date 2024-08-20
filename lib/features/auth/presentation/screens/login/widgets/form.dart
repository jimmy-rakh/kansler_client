import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_tabbar.dart';

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

    return Column(
      children: [
        AppTabBar(
          tabController: tabController,
          tabList: const ['Телефон', 'ИНН'],
          indicatorPadding: EdgeInsets.zero,
          labelPadding: const EdgeInsets.symmetric(vertical: 10),
          mainRadius: 12,
        ),
        verticalSpace16,
        AppTextField(
          hint: state.tabIndex == 0 ? 'Введите номер' : 'Введите инн',
          fieldController: bloc.valueController,
          focusNode: bloc.loginFocus,
          prefix: const Icon(KazeIcons.profileBold),
          textInputType: TextInputType.number,
          hintStyle: context.bodyLarge!.copyWith(
            color: context.colorScheme.inverseSurface,
          ),
        ),
        if (state.tabIndex == 1 &&
            !state.hasPass &&
            bloc.valueController.text.isNotEmpty) ...[
          verticalSpace12,
          AppTextField(
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
    );
  }
}
