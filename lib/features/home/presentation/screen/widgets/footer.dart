import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';

import '../../../../../core/style/colors.dart';

class Footer extends HookWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      borderRadius: 4,
      fillColor: context.theme.cardColor,
      height: context.isSmall ? context.height * .6 : context.height * .18,
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child:context.isSmall ? Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      height: 40,
                      width: 110,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/appstore.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    AppCard(
                      height: 40,
                      width: 120,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/google.png",
                        ),
                      ),
                    ),

                  ],
                ),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/favicon.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("Copyright 2015-2024 © kansler.uz - Все для\nофиса в Ташкенте. Все права защищены."),
                  ],
                ),
              ],
            ),
            verticalSpace20,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont1.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("+998 (78) 148-44-44"),
                  ],
                ),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont2.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("info@kansler.uz"),
                  ],
                ),
              ],
            ),
            verticalSpace20,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont3.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("г. Ташкент, Мирабадский район,\nул. Авлиё ота, д. 7"),
                  ],
                ),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont4.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("График работы Пн-Пт: с 9:00 до 18:00\nСб: с 9:00 до 16:00 Вс: Выходной"),
                  ],
                ),
              ],
            ),
          ],
        ): Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               kIsWeb ? Row( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      height: 40,
                      width: 110,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/appstore.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    AppCard(
                      height: 40,
                      width: 120,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/google.png",
                        ),
                      ),
                    ),

                  ],
                ) : const SizedBox(),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/favicon.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("Copyright 2015-2024 © kansler.uz - Все для\nофиса в Ташкенте. Все права защищены."),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont1.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("+998 (78) 148-44-44"),
                  ],
                ),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont2.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("info@kansler.uz"),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont3.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("г. Ташкент, Мирабадский район,\nул. Авлиё ота, д. 7"),
                  ],
                ),
                verticalSpace16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppCard(
                      width: 40,
                      height: 40,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/cont4.png",
                        ),
                      ),
                    ),
                    horizontalSpace10,
                    const Text("График работы Пн-Пт: с 9:00 до 18:00\nСб: с 9:00 до 16:00 Вс: Выходной"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
