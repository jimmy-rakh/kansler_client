import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/search/presentation/search_screen/widgets/categories_section.dart';
import 'package:kansler/features/search/presentation/search_screen/widgets/categories_view.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../product/presentation/widgets/product_card.dart';
import '../../domain/entities/search.entity.dart';
import 'blocs/search_bloc/search_bloc.dart';

@RoutePage()
class SearchScreen extends StatefulHookWidget implements AutoRouteWrapper {
  const SearchScreen({
    super.key,
    this.title = '',
  });

  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (ctx) =>
            getIt<SearchBloc>()..add(SearchEvent.search(title: title)),
        child: this,
      );
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void deactivate() {
    BlocProvider.of<SearchBloc>(context).close();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final state = useBlocBuilder(bloc);
    final authBloc = context.read<AuthBloc>();
    final currentWidth = MediaQuery.of(context).size.width;

    return SelectionArea(
      child: Container(
        color: context.background,
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1300),
              child: Scaffold(
                appBar: AppBarWidget(
                  showLeading: true,
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton.filled(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(context.cardColor),
                      ),
                      onPressed: () {
                        if (!context.isSmall &&
                            (state.whenOrNull(
                                  success: (status,
                                          products,
                                          filterData,
                                          isList,
                                          isMoreLoading,
                                          activePage,
                                          organizations) =>
                                      activePage != 0,
                                ) ??
                                false)) {
                          bloc.add(const SearchEvent.setBaseView());
                          return;
                        }
                        router.popForced();
                      },
                      icon: const Icon(KazeIcons.arrowLeftOutline),
                    ),
                  ),
                  leadingWidth: 58,
                  preferredSize: const Size.fromHeight(60),
                  actions: [
                     GestureDetector(
                            onTap: () =>
                                bloc.add(const SearchEvent.showFilters()),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: context.cardColor,
                              ),
                              child: const Icon(
                                KazeIcons.setting4outline,
                              ),
                            ),
                          ),
                    horizontalSpace8,
                    GestureDetector(
                            onTap: () =>
                                bloc.add(const SearchEvent.changeListType()),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: context.cardColor,
                              ),
                              child: Icon(state.whenOrNull(
                                success: (status,
                                        products,
                                        filterData,
                                        isList,
                                        isMoreLoading,
                                        activePage,
                                        organizations) =>
                                    isList
                                        ? KazeIcons.grid2Outline
                                        : KazeIcons.sliderVerticalOutline,
                              )),
                            ),
                          ),
                    horizontalSpace12
                  ],
                  child: AppTextField(
                    fieldController: bloc.fieldController,
                    fillColor: context.cardColor,
                    radius: 4,
                    suffix:  Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                          onTap: () { bloc.add(const SearchEvent.search());
                          FocusScope.of(context).unfocus();
                          },
                          child: Container(
                              decoration: BoxDecoration(color: context.primary,borderRadius: BorderRadius.circular(4)),
                              child: Icon(KazeIcons.searchOutline,color: context.onPrimary,))),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: context.isSmall ? 8 : 12,
                        vertical: context.isSmall ? 10 : 14),
                    hint: 'common.search'.tr(),
                    autoFocus: true,
                    hintStyle: context.theme.textTheme.bodyMedium,
                    style: context.theme.textTheme.bodyMedium,
                    textInputType: TextInputType.text,
                    onFieldSubmitted: (p0) =>
                        bloc.add(const SearchEvent.search()),
                  ),
                ),
                body: state.when(
                  loadInProgress: () => const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                  success: (status, products, filterData, isList,
                      isMoreLoading, activePage, organizations) {
                    if (products!.isEmpty) {
                      return Center(
                          child:
                              SvgPicture.asset(AppIllustrations.empty));
                    }
                    return status == PreordersStatus.loading
                        ? const Center(
                            child: CupertinoActivityIndicator(),
                          )
                        : Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              isList
                                  ? ListView.separated(
                                      controller: bloc.scrollController,
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 0, 5, 120),
                                      itemCount: products.length,
                                      separatorBuilder:
                                          (context, index) =>
                                              verticalSpace12,
                                      itemBuilder: (context, index) =>
                                          ProductCard.list(
                                        product: products[index],
                                        onCart: (type) => bloc.add(
                                            SearchEvent.changeCartState(
                                                products[index])),
                                        fieldController: authBloc.state ==
                                                const AuthState
                                                    .authenticated()
                                            ? bloc.quantityControllers[
                                                index]
                                            : TextEditingController(
                                                text: "1"),
                                        onPressed: () {},
                                      ),
                                    )
                                  : GridView.builder(
                                      controller: bloc.scrollController,
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 120),
                                      shrinkWrap: !kIsWeb,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount:
                                                  currentWidth < 1300 &&
                                                          currentWidth >
                                                              700
                                                      ? context.isTablet
                                                          ? 4
                                                          : 3
                                                      : currentWidth < 600
                                                          ? 2
                                                          : 4,
                                              childAspectRatio:
                                                  currentWidth < 400
                                                      ? .5
                                                      : context.isTablet
                                                          ? .7
                                                          : .6,
                                              crossAxisSpacing: 5,
                                              mainAxisSpacing: 1),
                                      itemCount: products.length,
                                      itemBuilder: (context, index) =>
                                          ProductCard.grid(
                                        height: 200,
                                        width: 200,
                                        product: products[index],
                                        onCart: (type) => bloc.add(
                                            SearchEvent.changeCartState(
                                                products[index])),
                                        fieldController: authBloc.state ==
                                                const AuthState
                                                    .authenticated()
                                            ? bloc.quantityControllers[
                                                index]
                                            : TextEditingController(),
                                        onPressed: () {},
                                      ),
                                    ),
                              AnimatedPositioned(
                                bottom: isMoreLoading ? 60 : -36,
                                left: context.width * .46,
                                right: context.width * .46,
                                duration: Durations.medium2,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100),
                                  child: SizedBox(
                                    height: 36,
                                    child: ColoredBox(
                                      color: context.cardColor,
                                      child:
                                          const CupertinoActivityIndicator(),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                  },
                  notFound: () => const SizedBox(),
                  error: () => const SizedBox(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
