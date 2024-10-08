import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';

import '../../../../../core/style/colors.dart';

class StepCard extends HookWidget {
  const StepCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      fillColor: context.background,
      showShadow: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace40,
              Text(
                "Как легко это работает?",
                style: context.titleLarge,
              ),
              verticalSpace40,
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppCard(
                        height: 250,
                        width: 290,
                        borderRadius: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                child: Image.asset(
                                  "assets/images/01.png",
                                ),
                              ),
                              verticalSpace20,
                              Text(
                                "Вы формируете заказ (онлайн, по телефону или ТГ)",
                                textAlign: TextAlign.center,
                                style: context.bodyLarge,
                              ),
                            ],
                          ),
                        )),
                   SizedBox(width: context.width * .1,),
                    AppCard(
                        height: 250,
                        width: 290,
                        borderRadius: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                child: Image.asset(
                                  "assets/images/02.png",
                                ),
                              ),
                              verticalSpace20,
                              Text(
                                "Мы заключим электронный договор",
                                textAlign: TextAlign.center,
                                style: context.bodyLarge,
                              ),
                            ],
                          ),
                        )),
                    SizedBox(width: context.width * .1,),
                    AppCard(
                        height: 250,
                        width: 290,
                        borderRadius: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                child: Image.asset(
                                  "assets/images/03.png",
                                ),
                              ),
                              verticalSpace20,
                              Text(
                                "Мы доставим товар до ваших дверей",
                                textAlign: TextAlign.center,
                                style: context.bodyLarge,
                              ),
                              verticalSpace20,
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              verticalSpace40,
            ],
          ),
        ),
      ),
    );
  }
}
