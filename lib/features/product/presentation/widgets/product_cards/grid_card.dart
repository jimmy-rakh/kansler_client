import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_network/image_network.dart';
import 'package:kansler/core/constants/kaze_icons.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/cart/domain/entities/cart_product.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import 'package:kansler/features/product/domain/entities/product.entity.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/network/constants.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import '../product_card.dart';

class ProductGridCard extends StatelessWidget implements ProductCard {
  const ProductGridCard({
    super.key,
    this.product,
    required this.onCart,
    this.onPressed,
    this.fieldController,
    this.isBusy = false,
    this.cartProduct,
    this.width = 130,
    this.height = 120,
  }) : assert(product != null || cartProduct != null);

  final ProductEntity? product;
  final CartProduct? cartProduct;
  final VoidCallback? onPressed;
  final ValueChanged<CheckoutType> onCart;
  final TextEditingController? fieldController;
  final bool isBusy;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    final preorderBloc = context.read<PreordersBloc>();
    final currencyFormatter = NumberFormat.decimalPattern('vi_VN');
    return AppCard(
      borderRadius: 4,
      width: width,
      onTap: () => router.push(ProductRoute(
          product: product ?? cartProduct!.product!,
          id: product?.id ?? cartProduct!.product!.id)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCard(
            borderRadius: 4,
            fillColor: AppColors.white,
            child: Stack(children: [
              (product ?? cartProduct?.product)?.imageUrl == null
                  ? GestureDetector(
                      onTap: () => router.push(ProductRoute(
                          product: product ?? cartProduct!.product!,
                          id: product?.id ?? cartProduct!.product!.id)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.asset(
                          AppImages.noPhoto,
                          height: height,
                          width: width,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : SizedBox(
                      height: height,
                      width: width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: kIsWeb
                            ? ImageNetwork(
                                onTap: () => router.push(ProductRoute(
                                    product: product ?? cartProduct!.product!,
                                    id: product?.id ??
                                        cartProduct!.product!.id)),
                                onLoading: const SizedBox(),
                                duration: 0,
                                fitWeb: BoxFitWeb.contain,
                                image: NetworkConstants.apiBaseUrl +
                                    (product ?? cartProduct?.product)!
                                        .imageUrl!,
                                height: height,
                                width: width,
                                onError: Image.asset(
                                  AppImages.noPhoto,
                                  height: 50,
                                ))
                            : CachedNetworkImage(
                                fit: BoxFit.contain,
                                width: width,
                                memCacheWidth: 500,
                                errorListener: (value) => log.e(
                                    '${product?.id ?? cartProduct?.product!.id}:${product?.title ?? cartProduct?.product!.title}\n$value'),
                                imageUrl: NetworkConstants.apiBaseUrl +
                                    (product ?? cartProduct?.product)!
                                        .imageUrl!,
                                errorWidget: (context, url, error) =>
                                    Image.asset(AppImages.noPhoto),
                              ),
                      ),
                    ),
              (product ?? cartProduct?.product)?.brand?.name == null
                  ? const SizedBox()
                  : Positioned(
                      bottom: 5,
                      right: 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
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
                              horizontalSpace5,
                              product?.leftQuantity == 0 &&
                                      product?.contractor?.stocks == null
                                  ? AppCard(
                                      fillColor:
                                          const Color.fromARGB(255, 0, 73, 208),
                                      borderColor: AppColors.white,
                                      borderRadius: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Text(
                                          "Под заказ",
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: context.onPrimary,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  : AppCard(
                                  fillColor: context.primary,
                                  borderColor: AppColors.white,
                                  borderRadius: 0,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(4),
                                    child: Text(
                                      product!.leftQuantity >
                                          999 ||
                                          product!.contractor!
                                              .leftQuantity >
                                              999
                                          ? "В наличии 999 шт."
                                          : product?.contractor
                                          ?.leftQuantity ==
                                          0
                                          ? "В наличии ${product?.leftQuantity} шт."
                                          : "В наличии ${product?.contractor?.leftQuantity} шт.",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: context.onPrimary,
                                      ),
                                      overflow:
                                      TextOverflow.ellipsis,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
            ]),
          ),
          Divider(color: AppColors.grey.withOpacity(0.2)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: 35,
              child: Text(
                (product ?? cartProduct?.product)?.title ?? '',
                maxLines: 2,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          verticalSpace8,
          Row(
            mainAxisAlignment: product?.leftQuantity == 0 &&
                    product?.contractor?.stocks == null
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            children: [
              if (product?.price != null)
                product?.leftQuantity == 0 &&
                        product?.contractor?.stocks == null
                    ? const SizedBox()
                    : product?.contractor?.price == null
                        ? Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                product?.priceDiscount != 0
                                    ? Text(
                                        "${currencyFormatter.format(product?.price).replaceAll('.', ' ')} сум",
                                        style: const TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 10),
                                      )
                                    : const Text(
                                        "",
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 10),
                                      ),
                                horizontalSpace5,
                                product?.priceDiscount != 0
                                    ? Text(
                                        "${currencyFormatter.format(product?.priceDiscount).replaceAll('.', ' ')} сум",
                                        style: const TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    : product?.leftQuantity == 0 &&
                                            product?.contractor?.stocks == null
                                        ? const Text(
                                            "Нет в наличии",
                                            style:
                                                TextStyle(color: AppColors.red),
                                          )
                                        : Text(
                                            '${currencyFormatter.format((product?.price ?? cartProduct?.price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: context.titleSmall,
                                          ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                product?.contractor?.price != null
                                    ? Text(
                                        "${currencyFormatter.format(product?.contractor?.price).replaceAll('.', ' ')} сум",
                                        style: const TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    : Text(
                                        '${currencyFormatter.format((product?.contractor?.price ?? cartProduct?.price) ?? 0).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: context.titleSmall,
                                      ),
                              ],
                            ),
                          ),
              (product ?? cartProduct!.product)!.inCart == null
                  ? const SizedBox()
                  : product?.leftQuantity == 0 &&
                          product?.contractor?.stocks == null
                      ? Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                            right: 2,
                          ),
                          child: AppButton(
                            borderRadius: 4,
                            animate: true,
                            textStyle: const TextStyle(fontSize: 9),
                            height: 37,
                            textColor: context.onPrimary,
                            onPressed: () {
                              onCart.call(CheckoutType.preorder);
                              if (product?.leftQuantity == 0) {
                                if (!((product ?? cartProduct?.product)
                                        ?.inPreorder ??
                                    false)) {
                                  preorderBloc.add(
                                      PreordersEvent.addToPreorders(
                                          (product ?? cartProduct!.product)!.id,
                                          1));
                                  return;
                                }
                                preorderBloc.add(
                                    PreordersEvent.deleteProductInPreorders(
                                  (product ?? cartProduct!.product)!.id,
                                ));
                              }
                            },
                            text:
                                (product ?? cartProduct!.product)!.inPreorder ??
                                        false
                                    ? "Удалить с корзины Предзаказа"
                                    : "Добавить в корзину Предзаказа",
                            fillColor:
                                (product ?? cartProduct!.product)!.inPreorder ??
                                        false
                                    ? AppColors.red
                                    : const Color.fromARGB(255, 0, 73, 208),
                          ),
                        )
                      : Tooltip(
                          message:
                              (product ?? cartProduct!.product)!.inCart ?? false
                                  ? "Удалить с корзины заказа"
                                  : "Добавить в корзину заказа",
                          child: AppButton(
                            animate: true,
                            width: context.isSmall ? context.width * .10 : 50,
                            fillColor:
                                (product ?? cartProduct!.product)!.inCart ??
                                        false
                                    ? AppColors.red
                                    : context.primary,
                            text: const Icon(
                              KazeIcons.cartOutline,
                              color: AppColors.white,
                              size: 20,
                            ),
                            textColor: AppColors.white,
                            onPressed: () {
                              onCart.call(CheckoutType.order);

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
                            },
                            size: MainAxisSize.min,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 6),
                            borderRadius: 4,
                          ),
                        ),
            ],
          ),
          verticalSpace8,
        ],
      ),
    );
  }
}
