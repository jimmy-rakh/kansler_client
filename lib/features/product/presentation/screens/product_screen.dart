import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:image_network/image_network.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/network/constants.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/keyboard_escape.dart';
import '../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../home/presentation/screen/widgets/discounts.dart';
import '../../domain/entities/product.entity.dart';
import '../blocs/details/details_bloc.dart';
import '../widgets/details_widget.dart';

@RoutePage()
class ProductScreen extends HookWidget implements AutoRouteWrapper {
  const ProductScreen({
    super.key,
    @PathParam('id') required this.id,
    required this.product,
  });
  final int id;
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DetailsBloc>();
    final state = useBlocBuilder(bloc);
    final authBloc = context.read<AuthBloc>();
    useEffect(() {
      bloc.add(DetailsEvent.setData(product));

      return null;
    }, [bloc]);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');

    return KeyboardEscape(
        onUnFocus: bloc.completeEditing,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton.filled(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(context.cardColor),
                ),
                onPressed: router.popForced,
                icon: const Icon(KazeIcons.arrowLeftOutline),
              ),
            ),
            leadingWidth: 58,
            title: Row(
              children: [
                SizedBox(
                  width: context.width * .7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      product.title ?? '',
                      maxLines: 2,
                      style: context.theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                // IconButton.filled(
                //   style: ButtonStyle(
                //     backgroundColor:
                //         MaterialStatePropertyAll(context.background),
                //   ),
                //   onPressed: () {},
                //   icon: const Icon(KazeIcons.heartOutline),
                // ),
              ],
            ),
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppCard(
                    width:
                        context.isSmall ? context.width : context.width * .45,
                    borderRadius: context.isSmall ? 0 : 4,
                    margin: context.isSmall
                        ? EdgeInsets.zero
                        : const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    padding: EdgeInsets.zero,
                    fillColor: AppColors.white,
                    showShadow: false,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: ImageNetwork(
                            image: NetworkConstants.apiBaseUrl +
                                (product.imageUrl ?? ''),
                            onLoading: const SizedBox(),
                            fitAndroidIos: BoxFit.contain,
                            fitWeb:  BoxFitWeb.contain,
                            height: context.isSmall
                                ? context.height * .4
                                : context.height * .5,
                            width: context.isSmall
                                ? context.width
                                : context.width * .4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: context.background,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: context.cardColor,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 0, 5),
                                      child: SizedBox(
                                        height: 50,
                                        width: context.isSmall
                                            ? context.width * .72
                                            : context.width * .3,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ...state.whenOrNull(
                                                  success: (product) => [
                                                    Text(
                                                        '${currencyFormatter.format(product.price ?? 0).replaceAll(".", " ")} ${'common.sum'.tr()}')
                                                  ],
                                                ) ??
                                                [
                                                  Text(
                                                      '${currencyFormatter.format(product.price ?? 0).replaceAll(".", " ")} ${'common.sum'.tr()}')
                                                ],
                                            if (state.whenOrNull(
                                                  success: (product) =>
                                                      !product.inCart!,
                                                ) ??
                                                true)
                                              SizedBox(
                                                child: AppCard(
                                                  fillColor: context.background,
                                                  showShadow: false,
                                                  borderRadius: 0,
                                                  padding:
                                                      const EdgeInsets.all(2),
                                                  child: Row(
                                                    children: [
                                                      AppIcon(
                                                        KazeIcons.minusOutline,
                                                        bgColor:
                                                            context.cardColor,
                                                        radius:
                                                            const BorderRadius
                                                                .horizontal(
                                                          left: Radius.circular(
                                                              0),
                                                        ),
                                                        onTap: bloc.decrement,
                                                        borderColor:
                                                            context.background,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4),
                                                      ),
                                                      AppTextField(
                                                        fillColor:
                                                            context.background,
                                                        height: 32,
                                                        width: context.isSmall
                                                            ? context.width * .2
                                                            : context.width *
                                                                .05,
                                                        radius: 0,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(4),
                                                        textAlign:
                                                            TextAlign.center,
                                                        fieldController: bloc
                                                            .fieldController,
                                                        onEditingComplete: bloc
                                                            .completeEditing,
                                                        onFieldSubmitted:
                                                            (value) {
                                                          if ((product)
                                                                  .leftQuantity >=
                                                              int.parse(bloc
                                                                  .fieldController
                                                                  .text)) {
                                                            bloc.add(
                                                                const DetailsEvent
                                                                    .addToCart());
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                          } else {
                                                            router.navigatorKey
                                                                .currentContext!
                                                                .showToast(
                                                                    'Недостаточно кол-во в складе');
                                                            bloc.fieldController
                                                                    .text =
                                                                (product)
                                                                    .leftQuantity
                                                                    .toString();
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                          }
                                                        },
                                                        textInputType:
                                                            TextInputType
                                                                .number,
                                                        textInputFormatter: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                      ),
                                                      AppIcon(
                                                        KazeIcons.addOutline,
                                                        bgColor:
                                                            context.cardColor,
                                                        radius:
                                                            const BorderRadius
                                                                .horizontal(
                                                          right:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                        onTap: bloc.increment,
                                                        borderColor:
                                                            context.background,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    AppButton(
                                      animate: true,
                                      width: 50,
                                      height: 50,
                                      fillColor: state.whenOrNull(
                                        success: (product) =>
                                            product.leftQuantity == 0
                                                ? (product.inPreorder ?? false)
                                                    ? const Color.fromARGB(
                                                        255, 69, 114, 199)
                                                    : const Color.fromARGB(
                                                        255, 0, 73, 208)
                                                : product.inCart!
                                                    ? AppColors.red
                                                    : context.primary,
                                      ),
                                      childAlignment: MainAxisAlignment.start,
                                      text: const Icon(
                                        KazeIcons.cartOutline,
                                        color: AppColors.white,
                                      ),
                                      textColor: AppColors.white,
                                      onPressed: authBloc.state ==
                                              const AuthState.authenticated()
                                          ? () {
                                              if ((product).leftQuantity >=
                                                  int.parse(bloc
                                                      .fieldController.text)) {
                                                bloc.add(const DetailsEvent
                                                    .addToCart());
                                                FocusScope.of(context)
                                                    .unfocus();
                                              } else {
                                                bloc.add(const DetailsEvent
                                                    .addToPreorder());

                                                FocusScope.of(context)
                                                    .unfocus();
                                              }
                                            }
                                          : () =>
                                              router.push(const AuthRoute()),
                                      size: MainAxisSize.min,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                      borderRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  context.isSmall ? const SizedBox() : horizontalSpace10,
                  context.isSmall
                      ? const SizedBox()
                      : AppCard(
                          width: context.isSmall
                              ? context.width
                              : context.width * .45,
                          height: context.isSmall
                              ? context.height * .3
                              : context.height * .624,
                          fillColor: context.cardColor,
                          padding: const EdgeInsets.only(bottom: 24),
                          margin: context.isSmall
                              ? const EdgeInsets.all(8)
                              : const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          borderRadius: 4,
                          child: ListView(
                            children: [
                              verticalSpace12,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: context.isSmall
                                          ? context.width * .47
                                          : context.width * .19,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Бренд"),
                                          Text(':'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: AppCard(
                                        fillColor: context.background,
                                        borderColor: AppColors.grey,
                                        borderRadius: 0,
                                        margin: const EdgeInsets.only(left: 5),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Text(
                                            "${product.brand?.name ?? ""} ",
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Категория',
                                value: product.category?.name ?? '',
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Страна производителя',
                                value: product.madeIn?.name ?? '',
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Артикул',
                                value: product.vendorCode ?? '',
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Код классификатора',
                                value: product.classifierCode ?? '',
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Классификатор',
                                value: product.classifierTitle ?? '',
                              ),
                              verticalSpace8,
                              DetailsWidget(
                                keyI: 'Ед. измерение',
                                value: product.measure ?? '',
                              ),
                              if (product.packagename != null) ...[
                                verticalSpace8,
                                DetailsWidget(
                                  keyI: 'Тип упаковки',
                                  value: product.packagename!,
                                ),
                              ],
                              if (product.packagecode != null) ...[
                                verticalSpace8,
                                DetailsWidget(
                                  keyI: 'Код упаковки',
                                  value: product.packagecode!,
                                ),
                              ],
                              if (product.quantityInBox != null) ...[
                                verticalSpace8,
                                DetailsWidget(
                                  keyI: 'В упаковке',
                                  value: product.quantityInBox!,
                                ),
                              ],
                              if (product.size != null) ...[
                                verticalSpace8,
                                DetailsWidget(
                                  keyI: 'Размер',
                                  value: product.size!,
                                ),
                              ],
                              if (product.weight != 0.0) ...[
                                verticalSpace8,
                                DetailsWidget(
                                  keyI: 'Вес',
                                  value: '${product.weight} т.',
                                ),
                              ],
                              if (product.description != null) ...[
                                verticalSpace8,
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text("Описание :"),
                                ),
                                verticalSpace8,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(product.description!),
                                )
                              ],
                            ],
                          ),
                        ),
                ],
              ),
              context.isSmall
                  ? AppCard(
                      width: context.width,
                      fillColor: context.cardColor,
                      padding: const EdgeInsets.only(bottom: 24),
                      margin: const EdgeInsets.all(8),
                      borderRadius: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace12,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: context.width * .47,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Бренд"),
                                      Text(':'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: AppCard(
                                    fillColor: context.background,
                                    borderColor: AppColors.grey,
                                    borderRadius: 0,
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Text(
                                        "${product.brand?.name ?? ""} ",
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Категория',
                            value: product.category?.name ?? '',
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Страна производителя',
                            value: product.madeIn?.name ?? '',
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Артикул',
                            value: product.vendorCode ?? '',
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Код классификатора',
                            value: product.classifierCode ?? '',
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Классификатор',
                            value: product.classifierTitle ?? '',
                          ),
                          verticalSpace8,
                          DetailsWidget(
                            keyI: 'Ед. измерение',
                            value: product.measure ?? '',
                          ),
                          if (product.packagename != null) ...[
                            verticalSpace8,
                            DetailsWidget(
                              keyI: 'Тип упаковки',
                              value: product.packagename!,
                            ),
                          ],
                          if (product.packagecode != null) ...[
                            verticalSpace8,
                            DetailsWidget(
                              keyI: 'Код упаковки',
                              value: product.packagecode!,
                            ),
                          ],
                          if (product.quantityInBox != null) ...[
                            verticalSpace8,
                            DetailsWidget(
                              keyI: 'В упаковке',
                              value: product.quantityInBox!,
                            ),
                          ],
                          if (product.size != null) ...[
                            verticalSpace8,
                            DetailsWidget(
                              keyI: 'Размер',
                              value: product.size!,
                            ),
                          ],
                          if (product.weight != 0.0) ...[
                            verticalSpace8,
                            DetailsWidget(
                              keyI: 'Вес',
                              value: '${product.weight} т.',
                            ),
                          ],
                          if (product.description != null) ...[
                            verticalSpace8,
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text("Описание :"),
                            ),
                            verticalSpace8,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(product.description!),
                            )
                          ],
                        ],
                      ),
                    )
                  : const SizedBox(),
              const DiscountsWidget(),
              verticalSpace24,
            ],
          ),
        ));
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<DetailsBloc>(),
        child: this,
      );
}
