import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/appbar.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../profile/profile_bloc.dart';

@RoutePage()
class ProfileScreen extends HookWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final authState = useBlocBuilder(authBloc);
    final bloc = context.read<ProfileBloc>();
    final profileState = useBlocBuilder(bloc);

    return Scaffold(
      appBar: const AppBarWidget(
        preferredSize: Size.fromHeight(60),
        showLeading: false,
        child: Text('Профиль'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace16,
          AppCard(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            width: double.maxFinite,
            borderRadius: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...authState.whenOrNull(
                      authenticated: () => [
                        ...profileState.whenOrNull(
                              ready: (current) => [
                                Text(
                                  current.company?.fullName ??
                                      current.company!.name!,
                                  style: context.titleSmall,
                                ),
                                verticalSpace5,
                                if (current.company?.inn != null)
                                  Text(
                                    "Инн : ${current.company!.inn}",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                verticalSpace5,
                                Text(
                                  "Телефон : ${current.company?.phoneNumbers?.map((e) => e)}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                verticalSpace5,
                              ],
                            ) ??
                            []
                      ],
                    ) ??
                    [
                      Text(
                        'Добро пожаловать',
                        style: context.titleSmall,
                      ),
                      verticalSpace12,
                      AppButton(
                        text: 'Войти в аккаунт',
                        fillColor: context.primary,
                        textColor: context.colorScheme.onPrimary,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 24,
                        ),
                        borderRadius: 0,
                        onPressed: () => router.push(const AuthRoute()),
                      ),
                    ],
              ],
            ),
          ),
          ...profileState.whenOrNull(
                ready: (current) => [
                  verticalSpace24,
                  if (current.company?.manager != null)
                    AppCard(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      width: double.maxFinite,
                      borderRadius: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Ваш менеджер:'),
                          Text(
                            current.company!.manager!.fullName!.isEmpty
                                ? current.company!.manager!.name!
                                : current.company!.manager!.fullName!,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          verticalSpace12,
                          const Text(
                            'Телефон для связи:',
                          ),
                          Text(
                            current.company!.manager!.phone == null
                                ? ""
                                : current.company!.manager!.phone!,
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  verticalSpace24,
                  if (current.company?.inn != null)
                    AppCard(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      width: double.maxFinite,
                      borderRadius: 0,
                      onTap: () => router.push(DebtRoute(id: current.company!.id)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Долг / История оплат'),
                          Transform.rotate(
                              angle: 3.2,
                              child: const Icon(KazeIcons.arrowLeftOutline))
                        ],
                      ),
                    ),
                  verticalSpace12,
                  AppCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    width: double.maxFinite,
                    borderRadius: 0,
                    onTap: () =>
                        router.push(AddressesRoute(companyId: current.company!.id)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Адрес'),
                        Transform.rotate(
                            angle: 3.2,
                            child: const Icon(KazeIcons.arrowLeftOutline))
                      ],
                    ),
                  )
                ],
              ) ??
              [],
          verticalSpace12,
          if (authBloc.state == const AuthState.authenticated()) ...[

              AppCard(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                borderRadius: 0,
                onTap: () => router.push(const SettingsRoute()),
                fillColor: context.cardColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Настройки'),
                    Transform.rotate(
                        angle: 3.2,
                        child: const Icon(KazeIcons.arrowLeftOutline))
                  ],
                ),
              ),
              verticalSpace16,
            AppButton(
              text: 'Выйти из аккаунта',
              textStyle: context.theme.textTheme.bodyLarge!,
              textColor: AppColors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              borderRadius: 0,
              onPressed: () => authBloc.add(const AuthEvent.logout()),
              fillColor: AppColors.red,
            ),
          ]
        ],
      ),
    );
  }
}
