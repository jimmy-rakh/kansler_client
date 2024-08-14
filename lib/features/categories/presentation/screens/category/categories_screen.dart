import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/body.dart';

import '../../../../../core/widgets/appbar.dart';


@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        preferredSize: Size.fromHeight(62),
        showLeading: false,
        child: CategoriesAppBar(),
      ),
      body: Center(child: CategoriesBody()),
    );
  }
}
