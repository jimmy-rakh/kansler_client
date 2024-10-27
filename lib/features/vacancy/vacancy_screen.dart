import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/appbar.dart';
import '../../app/router.dart';

@RoutePage()
class VacancyScreen extends HookWidget {
  const VacancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        color: context.background,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Scaffold(
              appBar: AppBarWidget(
                preferredSize: const Size.fromHeight(60),
                showLeading: true,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: IconButton.filled(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(context.cardColor),
                    ),
                    onPressed: () {
                      router.push(const ProfileRoute());
                    },
                    icon: const Icon(KazeIcons.arrowLeftOutline),
                  ),
                ),
                leadingWidth: 58,
                child: const Text('Актуальные вакансии'),
              ),
              body: SizedBox(
                width: context.isSmall ? context.width : 900,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    AppCard(
                      padding: const EdgeInsets.all(24),
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      borderRadius: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace10,
                          SizedBox(
                            width: context.isSmall ? context.width : 1200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppCard(
                                  fillColor: context.background,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  width: context.isSmall ? context.width : 1200,
                                  borderRadius: 4,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Найдите свою идеальную работу в Kansler с высокой зарплатой. Откликнитесь прямо сейчас на открытые вакансии:\n\n* Региональный менеджер\n* Менеджер отдела снабжения\n\nРезюме направлять на info@kansler.uz\n\nСвязаться с нами : +998 (78)148 - 44 - 44',
                                        style: context.labelLarge,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace60,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
