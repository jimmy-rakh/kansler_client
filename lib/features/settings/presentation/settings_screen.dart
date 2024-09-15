import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/settings/presentation/theme/theme_bloc.dart';

import '../../../app/router.dart';
import '../../../core/constants/kaze_icons.dart';
import '../../../core/style/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/appbar.dart';
import '../../auth/presentation/screens/auth/bloc/auth_bloc.dart';

@RoutePage()
class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final themeBloc = context.read<ThemeBloc>();
    final themeState = useBlocBuilder(themeBloc);

    return Scaffold(
      appBar: AppBarWidget(
        preferredSize: const Size.fromHeight(60),
        showLeading: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(context.cardColor),
            ),
            onPressed: router.popForced,
            icon: const Icon(KazeIcons.arrowLeftOutline),
          ),
        ),
        leadingWidth: 58,
        child: const Text('Настройки'),
      ),
      body: Column(
        children: [
          AppButton(
              text: 'Удалить аккаунт',
              textStyle: context.theme.textTheme.bodyLarge!,
              textColor: AppColors.red,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              borderRadius: 8,
              onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                        title: const Text('Удаление аккаунта'),
                        content: const Text(
                          'Вы действительно хотите удалить аккаунт?\nВыш аккаунт будет удален в течении 30 дней',
                        ),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            /// This parameter indicates this action is the default,
                            /// and turns the action's text to bold text.
                            isDestructiveAction: true,

                            onPressed: () {
                              authBloc.add(const AuthEvent.logout());
                              Navigator.pop(context);
                              router.popUntilRoot();
                            },
                            child: const Text('Удалить'),
                          ),
                          CupertinoDialogAction(
                            /// This parameter indicates the action would perform
                            /// a destructive action such as deletion, and turns
                            /// the action's text color to red.
                            isDefaultAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Отмена'),
                          ),
                        ],
                      )))
        ],
      ),
    );
  }
}
