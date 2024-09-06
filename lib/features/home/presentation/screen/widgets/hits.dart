import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/title_section.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../blocs/hit/hit_bloc.dart';

class HitsWidget extends HookWidget {
  const HitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HitBloc>();
    final state = useBlocBuilder(bloc);
    final authBloc = context.read<AuthBloc>();

    return Column(
      children: [
        TitleSectionWidget(
          name: 'common.day_hits'.tr(),
          onTap: () {},
        ),
        SizedBox(
          height: context.height * .25,
          child: state.when(
            loadInProgress: () => Skeletonizer(
              enabled: true,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 10,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.height * .15,
                  product: ProductEntity(id: 0, title: '', barcode: []),
                  onCart: () {},
                ),
              ),
            ),
            success: (products) {
              if (products.isEmpty) {
                return SvgPicture.asset(AppIllustrations.empty);
              }

              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: products.length,
                separatorBuilder: (context, index) => horizontalSpace12,
                itemBuilder: (context, index) => ProductCard.grid(
                  height: context.height * .15,
                  product: products[index],
                  onCart: () {},
                ),
              );
            },
            failure: () => const SizedBox(),
          ),
        )
      ],
    );
  }
}
