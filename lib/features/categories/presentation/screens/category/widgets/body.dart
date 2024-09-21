import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import '../../../../../../core/constants/app_illustrations.dart';
import '../../../../../../core/constants/spaces.dart';
import '../bloc/categories_bloc.dart';
import 'card.dart';

class CategoriesBody extends HookWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoriesBloc>();
    final state = useBlocBuilder(bloc);
    return state.when(
      loadInProgress: () => const CupertinoActivityIndicator(),
      ready: (categories) {
        if (categories.isEmpty) {
          return Center(child: SvgPicture.asset(AppIllustrations.empty));
        }

        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListView.separated(
            itemBuilder: (context, index) => CategoryCard(
              category: categories[index],
              showImage: true,
              callback: (isExpanded) => bloc.add(
                CategoriesEvent.fetchCategoryChildren(
                  categories[index].id,
                  isExpanded,
                ),
              ),
            ),
            separatorBuilder: (context, index) => verticalSpace5,
            itemCount: categories.length,
          ),
        );
      },
    );
  }
}
