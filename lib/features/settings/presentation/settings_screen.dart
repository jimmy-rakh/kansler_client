import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'dart:html' as html;
import '../../../app/router.dart';
import '../../../core/constants/kaze_icons.dart';
import '../../../core/style/colors.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/appbar.dart';
import '../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

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
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(KazeIcons.arrowLeftOutline),
                  ),
                ),
                leadingWidth: 58,
                child: const Text('Вопросы и ответы'),
              ),
              body: SizedBox(
                width: context.isSmall ? context.width : 900,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    AppCard(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      borderRadius: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace10,
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text('Связаться с нами',
                                style: context.titleMedium
                                    ?.copyWith(color: Colors.green)),
                          ),
                          verticalSpace10,
                          SizedBox(
                            width: context.isSmall ? context.width : 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Link(
                                    uri: Uri.parse('tel:+998935026545'),
                                    target: LinkTarget.blank,
                                    builder: (BuildContext ctx,
                                        FollowLink? openLink) {
                                      return ElevatedButton(
                                        style: ButtonStyle(
                                          elevation: WidgetStateProperty.all(0),
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  Colors.transparent),
                                          foregroundColor:
                                              WidgetStateProperty.all(
                                                  context.onPrimary),
                                          overlayColor: WidgetStateProperty.all(
                                              Colors.transparent),
                                        ),
                                        onPressed: openLink,
                                        child: AppCard(
                                          fillColor: context.background,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          width: context.isSmall
                                              ? context.width
                                              : 500,
                                          borderRadius: 4,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AppCard(
                                                borderRadius: 12,
                                                fillColor: AppColors.green,
                                                child: Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Icon(
                                                    Icons.phone,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              horizontalSpace10,
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Менеджер:  Исломбек Маннанов',
                                                    style: context.labelMedium
                                                        ?.copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                  verticalSpace5,
                                                  Text(
                                                    'Телефон:  +998935026545',
                                                    style: context.labelMedium
                                                        ?.copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                verticalSpace12,
                                Link(
                                    uri: Uri.parse(
                                        'https://t.me/kansler_support_bot'),
                                    target: LinkTarget.blank,
                                    builder: (BuildContext ctx,
                                        FollowLink? openLink) {
                                      return ElevatedButton(
                                        style: ButtonStyle(
                                          elevation: WidgetStateProperty.all(0),
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  Colors.transparent),
                                          foregroundColor:
                                              WidgetStateProperty.all(
                                                  context.onPrimary),
                                          overlayColor: WidgetStateProperty.all(
                                              Colors.transparent),
                                        ),
                                        onPressed: openLink,
                                        child: AppCard(
                                          fillColor: context.background,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          width: context.isSmall
                                              ? context.width
                                              : 500,
                                          borderRadius: 4,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AppCard(
                                                borderRadius: 12,
                                                fillColor: Colors.blueAccent,
                                                child: Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Icon(
                                                    Icons.send,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              horizontalSpace10,
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Telegram',
                                                    style: context.labelMedium
                                                        ?.copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                  verticalSpace5,
                                                  Text(
                                                    '@kansler_support_bot',
                                                    style: context.labelMedium
                                                        ?.copyWith(
                                                            color: Colors
                                                                .blueAccent),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),
                          Html(
                            data: """<div class="global-block-container">
                          <div class="global-content-block">
                          <p>
                          <span style="color: #00a650; font-size: 24pt;"><b><span style="font-size: 20pt;">Условия оплаты и доставки товаров от компании KANSLER </span></b></span>
                          </p>
                          <p>
                          <b><u><span style="color: #00a650;">СПОСОБЫ ОПЛАТЫ</span></u></b>
                          </p>
                          <p>
                          Для оплаты своих покупок на сайте kansler.uz Вы можете выбрать любой удобный для себя способ:
                          </p>
                          <ul type="disc">
                          <li>Оплата пластиковой картой.</li>
                          <li>Оплата перечислением.</li>
                          </ul>
                          <p>
                          При наличии дополнительных вопросов будем рады ответить на них по телефону 78 148 44 44
                          </p>
                          <p>
                          <u><b><span style="color: #00a650;">УСЛОВИЯ ДОСТАВКИ</span></b></u>
                          </p>
                          <p>
                          <b>ДОСТАВКА ОСУЩЕСТВЛЯЕТСЯ ИСКЛЮЧИТЕЛЬНО В ПРЕДЕЛАХ ГОРОДА ТАШКЕНТ:</b>
                          </p>
                          <ul type="disc">
                          <li>При заказе от 100 000 сум до 499 999 сум - бесплатная доставка в течении 72 часов (кроме офисной бумаги)<br>
                          </li>
                      <li>При заказе от 500 000 сум и выше - бесплатная доставка в течении 48 часов (кроме офисной бумаги)</li>
              <li>Доставка осуществляется курьерами Компании&nbsp;пн-пт: 10-00 до 18-00 сб: 10-00 до 16-00, воскресенье выходной.</li>
              <li>Прочие условия по доставке могут обговариваться в устной или письменной форме через менеджера.&nbsp;</li>
              <li>Возможность доставки в удобное для Покупателя время обговаривается в устной форме через менеджера. Просим обратить внимание, что при поступлении большого количества заказов на определенный интервал времени, выбранный интервал доставки может сдвинуться.</li>
              <li>При оплате перечислением доставка происходит в течение&nbsp;1-2 рабочих дней&nbsp;после поступления средств на р/с нашей компании, если иное не обусловлено договором.</li>
              </ul>
              <p>
              Доставка заказов, оформленных в выходные или праздничные дни, а также заказов поступивших после 18:00 осуществляется через один рабочий день.
              </p>
              <p>
              <b><u><span style="color: #00a650;">При доставке </span></u></b><u><span style="color: #00a650;">Покупатель&nbsp;</span></u><b><u><span style="color: #00a650;">при курьере:</span></u></b>
              </p>
              <ul type="disc">
              <li>Обязан осмотреть товар на предмет его целостности, пригодности, соответствия заказанному количеству, качеству и ассортименту. Если товар ненадлежащего качества, либо не соответствует заказанному количеству и/или ассортименту, то возможен отказ от ненадлежащего/несоответствующего заказу товара.</li>
              <li>Доставляемые товары вручаются Покупателю или лицу, указанному в качестве получателя в Заказе. Во избежание недоразумений, курьер может попросить покупателя предъявить документ, удостоверяющий его личность, и указать реквизиты этого документа на квитанции к Заказу.</li>
              <li>&nbsp;Дополнительные услуги (установка; профилактика; ремонт; демонтаж и др.), не входящие в условия доставки, осуществляются сотрудниками или партнерами компании и тарифицируются отдельно.&nbsp;</li>
            </ul>
            <p>
            <b>Служба поддержки</b>: +998 (78) 148-44-44
          </p>
          <p>
          <b>Электронная почта</b>: <a href="mailto:info@kansler.uz">info@kansler.uz</a>
          </p>
          </div> """,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'О нас',
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.green),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              "assets/images/kanslerinfo.jpg",
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                    ),
                    verticalSpace20,
                    if (authBloc.state == const AuthState.authenticated() &&
                        Platform.isIOS) ...[
                      verticalSpace20,
                      AppCard(
                          width: context.isSmall ? context.width : 300,
                          fillColor: AppColors.red,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          borderRadius: 8,
                          onTap: () => showCupertinoModalPopup(
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
                                          authBloc
                                              .add(const AuthEvent.logout());
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
                                  )),
                          child: Text(
                            'Удалить аккаунт',
                            style: context.theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ))
                    ],
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
