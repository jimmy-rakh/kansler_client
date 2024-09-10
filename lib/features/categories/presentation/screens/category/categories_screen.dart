import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/body.dart';

import '../../../../../core/widgets/appbar.dart';
import '../subcategory/widgets/body.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isSmall
          ? const AppBarWidget(
              preferredSize: Size.fromHeight(62),
              showLeading: false,
              child: CategoriesAppBar(),
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: Row(
        children: [
          SizedBox(
              width: context.isSmall ? context.width : context.isTablet ? context.width * .4 : context.width * .33,
              child: const CategoriesBody()),
          context.isSmall
              ? const SizedBox()
              : SizedBox(
              width: context.width * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                      height: context.height * .8,
                      child: const SubcategoryBody()),
                ],
              )),
        ],
      ),
    );
  }
}
