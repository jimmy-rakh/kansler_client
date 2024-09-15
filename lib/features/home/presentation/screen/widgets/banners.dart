import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../../product/presentation/widgets/product_card.dart';
import '../../../data/models/posters_dto.dart';
import '../../blocs/banner/banner_bloc.dart';
import 'default_image_container.dart';

class BannerWidget extends HookWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BannerBloc>();
    final state = useBlocBuilder(bloc);

    return SizedBox(
      height: context.isSmall ?  context.height * .33 : context.height * .5,
      child: state.when(
        loadInProgress: () => Skeletonizer(
          enabled: true,
          child: DefaultImageContainer(
            width: context.width * .95,
            height:context.isSmall ?  context.height * .33 : context.height * .5,
            margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
            radius: 4,
            imageUrl: "",
          )
        ),
        success: (posters) {
          if (posters.isEmpty) {
            return SvgPicture.asset(AppIllustrations.empty);
          }

          return Skeletonizer(
            enabled: posters.isEmpty,
            child: posters.isEmpty
                ? const SizedBox()
                : CarouselSlider.builder(
              itemCount:
              posters.isEmpty ? 0 : posters.length,
              itemBuilder: (context, index, page) {
                final poster = posters.isEmpty
                    ? PostersDto(
                    id: 0,
                    imgWeb: '')
                    : posters[index];
                return GestureDetector(
                  onTap: () {},
                  child: DefaultImageContainer(
                    width: context.width * .95,
                    height: context.isSmall ?  context.height * .33 : context.height * .5,
                    margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                    radius: 4,
                    imageUrl:context.isSmall ? poster.imgMobile : poster.imgWeb,
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: posters.isNotEmpty &&
                    posters.length != 1,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          );
        },
        failure: () => const SizedBox(),
      ),
    );
  }
}
