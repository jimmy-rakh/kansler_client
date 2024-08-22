import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/network/constants.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/app_icon.dart';
import '../../../../../core/widgets/app_text_field.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../../cart/domain/entities/cart_product.dart';
import '../../../../cart/presentation/screen/bloc/cart_bloc.dart';
import '../../../domain/entities/product.entity.dart';
import '../product_card.dart';

class ProductListCard extends HookWidget implements ProductCard {
  const ProductListCard({
    super.key,
    this.product,
    required this.onPressed,
    required this.onCart,
    required this.fieldController,
    this.isBusy = false,
    this.cartProduct,
    this.showActions = true,
  }) : assert(product != null || cartProduct != null);

  final ProductEntity? product;
  final CartProduct? cartProduct;
  final VoidCallback onPressed;
  final VoidCallback onCart;
  final TextEditingController fieldController;
  final bool isBusy;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final cartBloc = context.read<CartBloc>();
    final authState = useBlocBuilder(authBloc);
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    return AppCard(
      height: 120,
      onTap: () {
        // competeEditing();
        // onPressed();
        router.push(ProductRoute(product: product ?? cartProduct!.product!));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product != null || cartProduct?.product != null)
            Stack(
              children: [
                ColoredBox(
                  color: context.cardColor,
                  child: CachedNetworkImage(
                    fit: BoxFit.fitHeight,
                    height: 120,
                    width: 100,
                    memCacheHeight: 180,
                    memCacheWidth: 180,
                    errorListener: (value) => log.e(
                        '${product?.id ?? cartProduct?.product!.id}:${product?.title ?? cartProduct?.product!.imageUrl}\n$value'),
                    imageUrl: NetworkConstants.apiBaseUrl +
                        (product?.imageUrl ??
                            cartProduct?.product!.imageUrl ??
                            ''),
                    errorWidget: (context, url, error) =>
                        Image.asset(AppImages.noPhoto),
                  ),
                ),
                (product ?? cartProduct?.product)?.brand?.name == null
                    ? const SizedBox()
                    : Positioned(
                        bottom: 0.5,
                        right: 0.5,
                        left: 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppCard(
                              fillColor: context.background,
                              borderColor: AppColors.grey,
                              borderRadius: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  "${(product ?? cartProduct?.product)?.brand?.name} ",
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 10),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            // verticalSpace2,
                            // AppCard(
                            //   fillColor: context.background,

                            //   width: 100,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(6),
                            //     child: Text(
                            //       textAlign: TextAlign.end,
                            //       "${(product ?? cartProduct?.product)?.organization?.name ?? ''} ",
                            //       maxLines: 1,
                            //       style: const TextStyle(fontSize: 8),
                            //       overflow: TextOverflow.ellipsis,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )
              ],
            ),
          horizontalSpace12,
          SizedBox(
            width: context.width - 144,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace5,
                if (product != null || cartProduct?.product != null)
                  Text(
                    "Артикул: ${(product ?? cartProduct?.product)?.vendorCode ?? ''}",
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                  ),
                verticalSpace5,
                Text(
                  (product ?? cartProduct?.product)?.title ??
                      cartProduct?.name ??
                      'Нет на сайте',
                  maxLines: 1,
                ),
                verticalSpace5,
                product?.price == null && cartProduct?.price == null
                    ? const SizedBox.shrink()
                    : Text(
                        '${currencyFormatter.format((product?.price ?? cartProduct?.price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.titleSmall,
                      ),
                verticalSpace5,

                        if (cartProduct != null && !showActions)
                          Text('${cartProduct?.quantity} штук'),
                        if (showActions)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (!(product?.inCart ?? false))
                                SizedBox(
                                  child: product?.leftQuantity != 0
                                      ? Row(
                                          children: [
                                            AppIcon(
                                              KazeIcons.minusOutline,
                                              bgColor: context.cardColor,
                                              height: 22,
                                              radius:
                                                  const BorderRadius.horizontal(
                                                left: Radius.circular(0),
                                              ),
                                              onTap: decrement,
                                              borderColor: context.background,
                                              padding: const EdgeInsets.all(4),
                                            ),
                                            AppTextField(
                                              fillColor: context.background,
                                              height: 32,
                                              width: 60,
                                              radius: 0,
                                              contentPadding:
                                                  const EdgeInsets.all(4),
                                              textAlign: TextAlign.center,
                                              fieldController: fieldController,
                                              onChange: submit,
                                              onEditingComplete: competeEditing,
                                              onFieldSubmitted: (value) {
                                                if ((product ??
                                                            cartProduct!
                                                                .product)!
                                                        .leftQuantity >=
                                                    int.parse(
                                                        fieldController.text)) {
                                                  if ((product ??
                                                              cartProduct
                                                                  ?.product)
                                                          ?.leftQuantity !=
                                                      0) {
                                                    onCart();
                                                    if (!((product ??
                                                                cartProduct
                                                                    ?.product)
                                                            ?.inCart ??
                                                        true)) {
                                                      cartBloc.add(CartEvent.addToCart(
                                                          (product ??
                                                                  cartProduct!
                                                                      .product)!
                                                              .id,
                                                          int.parse(
                                                              fieldController
                                                                  .text)));
                                                      return;
                                                    }
                                                  }
                                                } else {
                                                  router.navigatorKey
                                                      .currentContext!
                                                      .showToast(
                                                          'Недостаточно кол-во в складе');
                                                  fieldController
                                                      .text = (product ??
                                                          cartProduct!.product)!
                                                      .leftQuantity
                                                      .toString();
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                }
                                              },
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
                                              height: 22,
                                              radius:
                                                  const BorderRadius.horizontal(
                                                right: Radius.circular(0),
                                              ),
                                              onTap: incremet,
                                              borderColor: context.background,
                                              padding: const EdgeInsets.all(4),
                                            ),
                                          ],
                                        )
                                      : const Text(
                                          "Нет в наличии",
                                          style:
                                              TextStyle(color: AppColors.red),
                                        ),
                                ),
                              const Spacer(),
                              AppButton(
                                width: context.width * .12,
                                isActive: product?.leftQuantity != 0,
                                fillColor:
                                    (product ?? cartProduct!.product)!.inCart ??
                                            false
                                        ? AppColors.red
                                        : context.primary,
                                text: const Icon(
                                  KazeIcons.cartOutline,
                                  color: AppColors.white,
                                ),
                                textColor: AppColors.white,
                                onPressed: authBloc.state == const AuthState.authenticated()
                                    ? () {
                                  onCart();
                                  if (!((product ?? cartProduct?.product)?.inCart ??
                                      true)) {
                                    cartBloc.add(CartEvent.addToCart(
                                        (product ?? cartProduct!.product)!.id,
                                        fieldController?.text == null ||
                                            fieldController?.text == ''
                                            ? 1
                                            : int.parse(fieldController!.text)));
                                    return;
                                  }
                                  fieldController?.text = '1';
                                  cartBloc.add(CartEvent.deleteProductInCart(
                                      (product ?? cartProduct!.product)!.id));
                                } :() => router.push(const AuthRoute()),
                                size: MainAxisSize.min,
                                margin: const EdgeInsets.only(
                                  right: 4,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 8),
                                borderRadius: 0,
                              ),
                            ],
                          ),


              ],
            ),
          )
        ],
      ),
    );
  }

  void incremet() {
    if ((product ?? cartProduct?.product)!.leftQuantity <=
        int.parse(fieldController.text)) {
      router.navigatorKey.currentContext!
          .showToast('Недостаточно кол-во в складе');
      return;
    }

    fieldController.text = (int.parse(fieldController.text) + 1).toString();
    updateCount();
  }

  void decrement() {
    if (int.parse(fieldController.text) == 1) return;

    fieldController.text = (int.parse(fieldController.text) - 1).toString();
    updateCount();
  }

  void submit(String value) {
    updateCount();

    if (int.parse(value) >= 1) return;

    fieldController.text = '1';
  }

  void competeEditing() {
    updateCount();

    if ((int.tryParse(fieldController.text) ?? 0) >= 1) return;

    fieldController.text = '1';
  }

  void authorize() {
    router.push(const AuthRoute());
  }

  void updateCount() {
    final bloc = BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!);

    bloc.add(CartEvent.updateProductInCart(
        (product?.id ?? cartProduct!.product!.id),
        int.parse(fieldController.text)));
  }
}
