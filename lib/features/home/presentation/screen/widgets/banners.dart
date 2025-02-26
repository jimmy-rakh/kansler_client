import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constants/app_illustrations.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../blocs/banner/banner_bloc.dart';
import 'default_image_container.dart';

class BannerWidget extends HookWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BannerBloc>();
    final state = useBlocBuilder(bloc);
    useEffect(() {
      bloc.add(const BannerEvent.fetch());

      return null;
    }, [bloc]);

    return SizedBox(
      height: context.isTablet
          ? context.height * .38
          : context.isSmall
              ? context.height * .27
              : 425,
      width: context.isDesktop ? 1280 : context.width,
      child: state.when(
        loadInProgress: () => const SizedBox(),
        success: (index, posters, poster, products) {
          if (posters == null) {
            bloc.add(const BannerEvent.fetch());
            return Skeletonizer(
                enabled: true,
                child: DefaultImageContainer(
                  fit: BoxFit.cover,
                  width: context.width,
                  height: context.isTablet
                      ? context.height * .38
                      : context.isSmall
                          ? context.height * .27
                          : 420,
                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  radius: 4,
                ));
          }
          return Skeletonizer(
            enabled: posters.isEmpty,
            child: Stack(
                    children: [
                      SizedBox(
                        width: context.isDesktop ? 1280 : context.width,
                        child: CarouselSlider.builder(
                          itemCount: posters.length,
                          itemBuilder: (context, index, page) {
                            final poster = posters[index];
                            return Stack(
                              children: [
                                DefaultImageContainer(
                                  onTap: () {
                                    router.navigate(
                                        BannerRoute(poster: poster, id: poster.id));
                                  },
                                  fit: BoxFit.fill,
                                  width: context.isDesktop ? 1280 : context.width,
                                  height: context.isTablet
                                      ? context.height * .38
                                      : context.isSmall
                                          ? context.height * .27
                                          : 420,
                                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                                  radius: 4,
                                  imageUrl: context.isSmall
                                      ? poster.imgMobile
                                      : poster.imgWeb,
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: context.width * .7,
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(maxWidth: 1280),
                                    child: SizedBox(
                                        width: context.width,
                                        child:  AppCard(
                                          fillColor: context.onPrimary,
                                          borderRadius: 4,
                                          padding:  const EdgeInsets.all(1),
                                          child: AppCard(
                                            onTap: () {
                                              router.navigate(
                                                  BannerRoute(poster: poster, id: poster.id));
                                            },
                                            fillColor: context.primary,
                                            borderRadius: 4,
                                            padding:  const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                            child:  Text("Подробно",style: TextStyle(color: context.onPrimary),),),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          carouselController: bloc.buttonCarouselController,
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                bloc.add(BannerEvent.onChange(index));
                              },
                              autoPlay: true,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              pauseAutoPlayOnManualNavigate: false,
                              viewportFraction: 1,
                              aspectRatio: 1.0,
                              initialPage: 2,),
                        ),
                      ),
                      context.isSmall
                          ? const SizedBox()
                          : Positioned(
                              left: 20,
                              top: context.isTablet ? context.height * .2 : 200,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: AppCard(
                                    fillColor:
                                        context.cardColor.withOpacity(0.5),
                                    borderRadius: 50,
                                    height: 50,
                                    width: 50,
                                    onTap: () {
                                      bloc.add(BannerEvent.onPrevious(index));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.arrow_back_ios,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black),
                                    )),
                              ),
                            ),
                      context.isSmall
                          ? const SizedBox()
                          : Positioned(
                              right: 20,
                              top: context.isTablet ? context.height * .2 : 200,
                              child: AppCard(
                                  fillColor: context.cardColor.withOpacity(0.5),
                                  borderRadius: 50,
                                  height: 50,
                                  width: 50,
                                  onTap: () {
                                    bloc.add(BannerEvent.onNext(index));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)),
                            ),
                      Positioned(
                        bottom: 0,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1280),
                          child: SizedBox(
                            width: context.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: posters.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => bloc.buttonCarouselController
                                      .animateToPage(entry.key),
                                  child: Container(
                                    width: 8,
                                    height: 8,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : Colors.black)
                                            .withOpacity(index == entry.key
                                                ? 0.9
                                                : 0.4)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        },
        failure: () => const SizedBox(),
      ),
    );
  }
}
