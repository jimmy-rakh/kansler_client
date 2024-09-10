import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/category/widgets/body.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/bloc/subcategory_bloc.dart';

import '../../../../../core/widgets/appbar.dart';
import '../subcategory/widgets/body.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();
    final state = useBlocBuilder(bloc);
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
              width: context.isSmall
                  ? context.width
                  : context.isTablet
                      ? context.width * .4
                      : context.width * .33,
              height: context.height,
              child: const CategoriesBody()),
          context.isSmall
              ? const SizedBox()
              : SizedBox(
                  width: context.isTablet
                      ? context.width * .6
                      : context.width * .67,
                  height: context.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
// AppBarWidget(
//           preferredSize: Size.fromHeight(state.category.hasChildren ? 110 : 60),
//           bottomChild: category.hasChildren ? const SubcategoryAppBarBottom() : null,
//           bottomSize: const Size(double.maxFinite, 40),
//           child: SubcategoryAppBar(category: category),
//         ),
                      SizedBox(
                          height: context.height * .9,
                          child: const SubcategoryBody()),
                    ],
                  )),
        ],
      ),
    );
  }
}
