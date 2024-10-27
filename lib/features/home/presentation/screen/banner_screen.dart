import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/constants/constants.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/screen/widgets/default_image_container.dart';
import 'package:skeletonizer/skeletonizer.dart';
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
      return null;
    }, [bloc]);
    useEffect(() {
      bloc.add(BannerEvent.fetchBannerProducts(id));
      return null;
    }, [bloc]);
    return SelectionArea(
        child: Container(
      color: context.background,
      child: Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1300,
            ),
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
                        onPressed: () {
                          router.push(const MainRoute());
                        },
                        icon: const Icon(KazeIcons.arrowLeftOutline),
                      ),
                    ),
                    leadingWidth: 58,
                    child: Text("${poster?.id ?? ""}"),
                  ),
                  body: ListView(
                    children: [
                      poster?.imgWeb == null || poster?.imgMobile == null
                          ? const SizedBox()
                          : DefaultImageContainer(
                              fit: BoxFit.fill,
                              width: context.isDesktop ? 1280 : context.width,
                              height: context.isTablet
                                  ? context.height * .38
                                  : context.isSmall
                                      ? context.height * .27
                                      : 425,
                              margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                              radius: 4,
                              imageUrl: context.isSmall
                                  ? poster?.imgMobile
                                  : poster?.imgWeb,
                            ),
                      verticalSpace20,
                      products == null ? const SizedBox() : Wrap(
                        alignment: WrapAlignment.center,
                        runSpacing: 8,
                        spacing: 8,
                        children: List.generate(
                          products!.length,
                          (index) => ProductCard.grid(
                            height: 200,
                            width: 200,
                            product: products![index],
                            onCart: (type) {},
                            fieldController: TextEditingController(),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      verticalSpace60,
                    ],
                  ),
                );
              },
              failure: () => const SizedBox(),
            )),
      ),
    ));
  }
}
