import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/appbar.dart';

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
            constraints: const BoxConstraints(maxWidth: 900,),
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
                child: const Text('Ваканции в компании Канцлер'),
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
                            child: Text('Связаться с нами : +998 (78) 148-44-44',style: context.titleMedium?.copyWith(color: Colors.green)),
                          ),
                          verticalSpace10,
                          SizedBox(
                            width: context.isSmall ? context.width : 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppCard(
                                  fillColor: context.background,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  width: context.isSmall ? context.width : 500,
                                  borderRadius: 4,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       AppCard(
                                        borderRadius: 12,
                                        fillColor: context.cardColor,
                                        child:  Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Icon(Icons.person,color: context.titleLarge?.color,),
                                        ),
                                      ),
                                      horizontalSpace10,
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('1 Региональный Менеджер',style: context.labelMedium?.copyWith(color: Colors.blueAccent),),
                                          verticalSpace5,
                                          Text('2 Менеджер отдела Снабжения',style: context.labelMedium?.copyWith(color: Colors.blueAccent),),
                                        ],
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
