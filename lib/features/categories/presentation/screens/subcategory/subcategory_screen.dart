import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/widgets/appbar.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/widgets/appbar_bottom.dart';
import 'package:kansler/features/categories/presentation/screens/subcategory/widgets/body.dart';

import '../../../../../core/widgets/appbar.dart';
import '../../../../../core/widgets/keyboard_escape.dart';
import '../../../domain/entities/category.entitity.dart';
import 'bloc/subcategory_bloc.dart';

@RoutePage()
class SubcategoryScreen extends HookWidget {
  const SubcategoryScreen({
    super.key,
    required this.category,
  });

  final CategoryEntitity category;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();

    useEffect(() {
      bloc.add(SubcategoryEvent.init(category));
      return null;
    }, [bloc]);

    return KeyboardEscape(
      onUnFocus: bloc.onUnfocus,
      child: Scaffold(
        appBar: AppBarWidget(
          preferredSize: Size.fromHeight(category.hasChildren ? 110 : 60),
          bottomChild:
              category.hasChildren ? const SubcategoryAppBarBottom() : null,
          bottomSize: const Size(double.maxFinite, 40),
          child: SubcategoryAppBar(category: category),
        ),
        body: const SubcategoryBody(),
      ),
    );
  }
}
