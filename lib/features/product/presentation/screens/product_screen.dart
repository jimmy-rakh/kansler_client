import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../app/di.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/app_images.dart';
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
import '../../domain/entities/product.entity.dart';
import '../blocs/details/details_bloc.dart';
import '../widgets/details_widget.dart';


@RoutePage()
class ProductScreen extends HookWidget implements AutoRouteWrapper {
  const ProductScreen({
    super.key,
    required this.product,
  });

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
                      product.title,
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
          body: Stack(
            children: [
              ListView(
                children: [
                  AppCard(
                    borderRadius: 0,
                    fillColor: context.background,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(0),
                            right: Radius.circular(0)),
                        child: ColoredBox(
                          color: AppColors.white,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: CachedNetworkImage(
                              imageUrl: NetworkConstants.apiBaseUrl +
                                  (product.imageUrl ?? ''),
                              errorWidget: (context, url, error) =>
                                  Image.asset(AppImages.noPhoto),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  authBloc.state == const AuthState.authenticated()
                      ?
                  Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child:  ColoredBox(
                      color: context.background,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: context.cardColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                                child: SizedBox(
                                  height: 50,
                                  width: context.width * .72,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ...state.whenOrNull(
                                        success: (product) => [
                                          Text('${currencyFormatter.format(product.price ?? 0).replaceAll(".", " ")} ${'common.sum'.tr()}')
                                        ],
                                      ) ??
                                          [Text('${currencyFormatter.format(product.price ?? 0).replaceAll(".", " ")} ${'common.sum'.tr()}')],
                                      if (state.whenOrNull(
                                        success: (product) =>
                                        !product.inCart!,
                                      ) ??
                                          true)
                                        SizedBox(
                                          child:product.leftQuantity != 0 ? AppCard(
                                            fillColor: context.background,
                                            showShadow: false,
                                            borderRadius: 0,
                                            padding: const EdgeInsets.all(2),
                                            child: Row(
                                              children: [
                                                AppIcon(
                                                  KazeIcons.minusOutline,
                                                  bgColor: context.cardColor,
                                                  radius:
                                                  const BorderRadius.horizontal(
                                                    left: Radius.circular(0),
                                                  ),
                                                  onTap: bloc.decrement,
                                                  borderColor: context.background,
                                                  padding: const EdgeInsets.all(4),
                                                ),
                                                AppTextField(
                                                  fillColor: context.background,
                                                  height: 32,
                                                  width: context.width * .2,
                                                  radius: 0,
                                                  contentPadding:
                                                  const EdgeInsets.all(4),
                                                  textAlign: TextAlign.center,
                                                  fieldController:
                                                  bloc.fieldController,
                                                  onEditingComplete:
                                                  bloc.completeEditing,
                                                  onFieldSubmitted: (value) {
                                                    if((product ).leftQuantity >=
                                                        int.parse(bloc.fieldController.text)) {
                                                      bloc.add(const DetailsEvent.addToCart());
                                                      FocusScope.of(context).unfocus();
                                                    }else{
                                                      router.navigatorKey.currentContext!
                                                          .showToast('Недостаточно кол-во в складе');
                                                      bloc.fieldController.text = (product).leftQuantity.toString();
                                                      FocusScope.of(context).unfocus();
                                                    }},
                                                  textInputType:
                                                  TextInputType.number,
                                                  textInputFormatter: [
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                ),
                                                AppIcon(
                                                  KazeIcons.addOutline,
                                                  bgColor: context.cardColor,
                                                  radius:
                                                  const BorderRadius.horizontal(
                                                    right: Radius.circular(0),
                                                  ),
                                                  onTap: bloc.increment,
                                                  borderColor: context.background,
                                                  padding: const EdgeInsets.all(4),
                                                ),
                                              ],
                                            ),
                                          )  : const Text("Нет в наличии",style: TextStyle(color: AppColors.red),),
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
                                  success: (product) => product.inCart!
                                      ? AppColors.red
                                      : context.primary,
                                ),
                                childAlignment: MainAxisAlignment.start,
                                text: const Icon(
                                  KazeIcons.cartOutline,
                                  color: AppColors.white,
                                ),
                                isActive: state.whenOrNull(
                                    success: (product) =>
                                    product.leftQuantity != 0) ??
                                    false,
                                textColor: AppColors.white,
                                onPressed: () {
                                  if((product ).leftQuantity >=
                                      int.parse(bloc.fieldController.text)) {
                                    bloc.add(const DetailsEvent.addToCart());
                                    FocusScope.of(context).unfocus();
                                  }else{
                                    router.navigatorKey.currentContext!
                                        .showToast('Недостаточно кол-во в складе');
                                    bloc.fieldController.text = (product).leftQuantity.toString();
                                    FocusScope.of(context).unfocus();
                                  }} ,
                                size: MainAxisSize.min,
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                borderRadius: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ) : const SizedBox(),
                  AppCard(
                    width: context.width,
                    fillColor: context.cardColor,
                    padding: const EdgeInsets.only(bottom: 24),
                    margin: const EdgeInsets.all(8),
                    borderRadius: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace12,
                        // DetailsWidget(
                        //   keyI: 'Поставщик',
                        //   value: product.organization?.name ?? "",
                        // ),
                        // verticalSpace8,
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
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(product.description!),
                          )
                        ],
                      ],
                    ),
                  ),
                  verticalSpace10,
                ],
              ),
            ],
          ),
          )
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<DetailsBloc>(),
        child: this,
      );
}
