import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/search/presentation/search_screen/blocs/prices/prices_bloc.dart';
import 'package:url_launcher/link.dart';
import 'dart:html' as html;
import '../../../../../app/router.dart';
import '../../../../../core/style/colors.dart';

class InfoAppBar extends HookWidget {
  const InfoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PricesBloc>();
    final state = useBlocBuilder(bloc);
    return AppCard(
      showShadow: false,
      fillColor: context.background,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: AppCard(
                      width: 20,
                      height: 20,
                      fillColor: AppColors.white,
                      borderRadius: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          "assets/images/cont1.png",
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace10,
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "+998 (78) 148-44-44",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
              ),
              Link(
                  uri: Uri.parse('https://t.me/kansler_support_bot'),
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all(0),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.transparent),
                        foregroundColor:
                            WidgetStateProperty.all(context.titleLarge?.color),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                      ),
                      onPressed:
                      kIsWeb
                          ? () {
                        html.window.open(
                            'https://t.me/kansler_support_bot',
                            'new tab');
                      }
                          :

                      openLink,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppCard(
                            width: 20,
                            height: 20,
                            fillColor: AppColors.white,
                            borderRadius: 4,
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.send,
                                size: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          horizontalSpace10,
                          Text(
                            "@kansler_support_bot",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    width: 20,
                    height: 20,
                    fillColor: AppColors.white,
                    borderRadius: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/images/cont3.png",
                      ),
                    ),
                  ),
                  horizontalSpace10,
                  const Text(
                    "г. Ташкент, Мирабадский район,\nул. Авлиё ота, д. 7",
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
             context.isTablet ? const SizedBox() : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppCard(
                    width: 20,
                    height: 20,
                    fillColor: AppColors.white,
                    borderRadius: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/images/cont4.png",
                      ),
                    ),
                  ),
                  horizontalSpace10,
                  const Text(
                    "График работы Пн-Пт: с 9:00 до 18:00\nСб: с 9:00 до 16:00 Вс: Выходной",
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  bloc.add(const PricesEvent.getLink());
                },
                child: AppCard(
                  width: 140,
                  height: 30,
                  borderRadius: 4,
                  borderColor: Colors.grey.withOpacity(0.5),
                  fillColor: context.primary,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: state.status == PricesStatus.loading
                        ? Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                horizontalSpace10,
                                 CupertinoActivityIndicator(
                                  radius: 8,
                                  color: context.onPrimary,
                                ),
                                horizontalSpace10,
                                Text(
                                  "Загрузка",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: context.onPrimary,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              horizontalSpace10,
                              Icon(
                                Icons.save_alt,
                                size: 16,
                                color: context.onPrimary,
                              ),
                              horizontalSpace10,
                              Text(
                                "Скачать прайс",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: context.onPrimary,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => router.push(const SettingsRoute()),
                child: AppCard(
                  width: 110,
                  height: 30,
                  borderRadius: 4,
                  borderColor: Colors.grey.withOpacity(0.5),
                  fillColor: AppColors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 16,
                          color: Colors.black,
                        ),
                        horizontalSpace10,
                        Text(
                          "О Магазине",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
