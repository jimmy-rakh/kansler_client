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
import '../../../../home/presentation/screen/widgets/footer.dart';
import '../../../../settings/presentation/theme/theme_bloc.dart';
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
    final themeBloc = context.read<ThemeBloc>();
    final themeState = useBlocBuilder(themeBloc);

    return SelectionArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1300),
          child: Scaffold(
            appBar: const AppBarWidget(
              preferredSize: Size.fromHeight(60),
              showLeading: false,
              child: Text('Профиль'),
            ),
            body: Center(
              child: ListView(
                children: [
                  SizedBox(
                    width: context.isSmall ? context.width : 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace16,
                        AppCard(
                          margin:  EdgeInsets.symmetric(horizontal: context.isSmall ? 16 : 0),
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          width: context.isSmall ? context.width : 500,
                          height: 125,
                          borderRadius: 4,
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
                                      borderRadius: 4,
                                      onPressed: () => router.push(const AuthRoute()),
                                    ),
                                  ],
                            ],
                          ),
                        ),
                        verticalSpace16,
                        AppCard(
                          margin:  EdgeInsets.symmetric(horizontal: context.isSmall ? 16 : 0),
                          fillColor: context.cardColor,
                          width: context.isSmall ? context.width : 500,
                          borderRadius: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Тема'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppCard(
                                      padding: const EdgeInsets.all(8),
                                      borderRadius: 4,
                                      onTap: () => themeBloc
                                          .add(const ThemeEvent.changeTheme(ThemeMode.light)),
                                      fillColor: themeState.mode == ThemeMode.light
                                          ? const Color.fromARGB(255, 181, 229, 176)
                                          : context.background,
                                      child: const Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 2),
                                            child: Text('Светлая'),
                                          ),
                                          Icon(Icons.light_mode),
                                        ],
                                      ),
                                    ),
                                    AppCard(
                                      padding: const EdgeInsets.all(8),
                                      borderRadius: 4,
                                      onTap: () => themeBloc
                                          .add(const ThemeEvent.changeTheme(ThemeMode.dark)),
                                      fillColor: themeState.mode == ThemeMode.dark
                                          ? const Color.fromARGB(255, 181, 229, 176)
                                          : context.background,
                                      child: const Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 2),
                                            child: Text('Темная'),
                                          ),
                                          Icon(Icons.dark_mode),
                                        ],
                                      ),
                                    ),
                                    AppCard(
                                      padding: const EdgeInsets.all(8),
                                      borderRadius: 4,
                                      onTap: () => themeBloc
                                          .add(const ThemeEvent.changeTheme(ThemeMode.system)),
                                      fillColor: themeState.mode == ThemeMode.system
                                          ? const Color.fromARGB(255, 181, 229, 176)
                                          : context.background,
                                      child: const Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 2),
                                            child: Text('Системная'),
                                          ),
                                          Icon(Icons.settings_system_daydream_outlined),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              verticalSpace20,
                            ],
                          ),
                        ),
                        ...profileState.whenOrNull(
                          ready: (current) => [
                            verticalSpace24,
                            // if (current.company?.manager != null)
                            //   AppCard(
                            //     margin:  EdgeInsets.symmetric(horizontal:context.isSmall ? 16 : 0),
                            //     padding: const EdgeInsets.symmetric(
                            //         vertical: 12, horizontal: 16),
                            //     width: context.isSmall ? context.width : 500,
                            //     borderRadius: 4,
                            //     child: Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         const Text('Ваш менеджер:'),
                            //         Text(
                            //           current.company!.manager!.fullName!.isEmpty
                            //               ? current.company!.manager!.name!
                            //               : current.company!.manager!.fullName!,
                            //           style: Theme.of(context).textTheme.bodySmall,
                            //         ),
                            //         verticalSpace12,
                            //         const Text(
                            //           'Телефон для связи:',
                            //         ),
                            //         Text(
                            //           current.company!.manager!.phone == null
                            //               ? ""
                            //               : current.company!.manager!.phone!,
                            //           style: Theme.of(context).textTheme.bodySmall,
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // verticalSpace24,
                            // if (current.company?.inn != null)
                            //   AppCard(
                            //     margin: const EdgeInsets.symmetric(horizontal: 16),
                            //     padding: const EdgeInsets.symmetric(
                            //         vertical: 12, horizontal: 16),
                            //     width: double.maxFinite,
                            //     borderRadius: 4,
                            //     onTap: () => router.push(DebtRoute(id: current.company!.id)),
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         const Text('Долг / История оплат'),
                            //         Transform.rotate(
                            //             angle: 3.2,
                            //             child: const Icon(KazeIcons.arrowLeftOutline))
                            //       ],
                            //     ),
                            //   ),
                            // verticalSpace12,
                            AppCard(
                              margin:  EdgeInsets.symmetric(horizontal:context.isSmall ? 16 : 0),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              width: context.isSmall ? context.width : 500,
                              height: 50,
                              borderRadius: 4,
                              onTap: () =>
                                  router.push(AddressesRoute(id: current.company!.id)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.location_on),
                                       horizontalSpace5,
                                       Text('Адрес'),
                                    ],
                                  ),
                                  Transform.rotate(
                                      angle: 3.2,
                                      child: const Icon(KazeIcons.arrowLeftOutline))
                                ],
                              ),
                            ),
                          ],
                        ) ??
                            [],
                        verticalSpace16,
                        AppCard(
                          margin:  EdgeInsets.symmetric(horizontal:context.isSmall ? 16 : 0),
                          width: context.isSmall ? context.width : 500,
                          height: 50,
                          padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          borderRadius: 4,
                          onTap: () => router.push(const SettingsRoute()),
                          fillColor: context.cardColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.info_outline),
                                  horizontalSpace5,
                                  Text('Условия оплаты и доставки'),
                                ],
                              ),
                              Transform.rotate(
                                  angle: 3.2,
                                  child: const Icon(KazeIcons.arrowLeftOutline))
                            ],
                          ),
                        ),
                        verticalSpace16,
                        AppCard(
                          margin:  EdgeInsets.symmetric(horizontal:context.isSmall ? 16 : 0),
                          width: context.isSmall ? context.width : 500,
                          height: 50,
                          padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          borderRadius: 4,
                          onTap: () => router.push(const VacancyRoute()),
                          fillColor: context.cardColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.list_alt),
                                  horizontalSpace5,
                                  Text('Актуальные вакансии'),
                                ],
                              ),
                              Transform.rotate(
                                  angle: 3.2,
                                  child: const Icon(KazeIcons.arrowLeftOutline))
                            ],
                          ),
                        ),
                        verticalSpace16,
                        if (authBloc.state == const AuthState.authenticated()) ...[
                          AppButton(
                            text: 'Выйти из аккаунта',
                            textStyle: context.theme.textTheme.bodyLarge!,
                            textColor: AppColors.white,
                            width: context.isSmall ? context.width : 500,
                            margin:  EdgeInsets.symmetric(horizontal:context.isSmall ? 16 : 0),
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                            borderRadius: 4,
                            onPressed: () => authBloc.add(const AuthEvent.logout()),
                            fillColor: AppColors.red,
                          ),
                        ],
                      ],
                    ),
                  ),
                  verticalSpace40,
                  context.isSmall ? const Footer() : const SizedBox(),
                  verticalSpace40,
                ],
              ),
            ),
            bottomNavigationBar:context.isSmall ? const SizedBox() : const Footer(),
          ),
        ),
      ),
    );
  }
}
