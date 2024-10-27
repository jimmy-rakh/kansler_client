import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/screen/widgets/default_image_container.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../product/presentation/widgets/product_card.dart';
import '../../data/models/posters_dto.dart';
import '../blocs/banner/banner_bloc.dart';

@RoutePage()
class BannerScreen extends HookWidget {
  const BannerScreen({
    super.key,
    @PathParam('id') required this.id,
    this.poster,
  });

  final PostersDto? poster;
  final int id;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BannerBloc>();
    final state = useBlocBuilder(bloc);
    useEffect(() {
      bloc.add(BannerEvent.fetchById(id));
      bloc.add(BannerEvent.fetchBannerProducts(id));

      return null;
    }, [bloc]);

    return SelectionArea(
        child: Container(
      color: context.background,
      child: Center(
        child: state.when(
          loadInProgress: () => SizedBox(
            height: context.isTablet
                ? context.height * .38
                : context.isSmall
                    ? context.height * .27
                    : 425,
          ),
          success: (index, posters, poster, products) {
            return Scaffold(
              body: ListView(
                children: [
                  poster?.imgWeb == null || poster?.imgMobile == null
                      ? const SizedBox()
                      : Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 1300,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: IconButton.filled(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  context.cardColor),
                                        ),
                                        onPressed: () {
                                          router.push(const MainRoute());
                                        },
                                        icon: const Icon(
                                            KazeIcons.arrowLeftOutline),
                                      ),
                                    ),
                                    Text(
                                        "${this.poster?.notification?.title ?? "${poster?.notification?.title ?? ""}"}"),
                                  ],
                                ),
                                DefaultImageContainer(
                                  fit: BoxFit.fill,
                                  width:
                                      context.isDesktop ? 1280 : context.width,
                                  height: context.isTablet
                                      ? context.height * .38
                                      : context.isSmall
                                          ? context.height * .27
                                          : 425,
                                  margin:
                                      const EdgeInsets.fromLTRB(12, 12, 12, 0),
                                  radius: 4,
                                  imageUrl: context.isSmall
                                      ? poster?.imgMobile
                                      : poster?.imgWeb,
                                ),
                              ],
                            ),
                          ),
                        ),
                  verticalSpace60,
                  products == null
                      ? const SizedBox()
                      : Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 1300,
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              runSpacing: 24,
                              spacing: 24,
                              children: List.generate(
                                products!.length,
                                (index) => ProductCard.grid(
                                  height: 200,
                                  width: 200,
                                  product: products![index],
                                  onCart: (type) => bloc.add(
                                      BannerEvent.addToCart(
                                          products[index].id, type)),
                                  fieldController: TextEditingController(),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                  verticalSpace60,
                ],
              ),
            );
          },
          failure: () => const SizedBox(),
        ),
      ),
    ));
  }
}
