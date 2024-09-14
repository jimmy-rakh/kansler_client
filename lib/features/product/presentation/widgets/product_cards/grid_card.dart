import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_network/image_network.dart';
import 'package:kansler/core/constants/kaze_icons.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/cart/domain/entities/cart_product.dart';
import 'package:kansler/features/product/domain/entities/product.entity.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/network/constants.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
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
  final VoidCallback onCart;
  final TextEditingController? fieldController;
  final bool isBusy;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    final authBloc = context.read<AuthBloc>();
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
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: kIsWeb
                          ? ImageNetwork(
                              onTap: () => router.push(ProductRoute(
                                  product: product ?? cartProduct!.product!,
                                  id: product?.id ?? cartProduct!.product!.id)),
                              fitWeb: BoxFitWeb.fill,
                              fitAndroidIos: BoxFit.fill,
                              onLoading: const SizedBox(),
                              duration: 0,
                              image: NetworkConstants.apiBaseUrl +
                                  (product ?? cartProduct?.product)!.imageUrl!,
                              height: height,
                              width: width,
                              onError: Image.asset(
                                AppImages.noPhoto,
                                height: 50,
                              ))
                          : CachedNetworkImage(
                              fit: BoxFit.fitHeight,
                              height: height,
                              width: width,
                              memCacheHeight: 200,
                              memCacheWidth: 200,
                              imageUrl: NetworkConstants.apiBaseUrl +
                                  (product ?? cartProduct?.product)!.imageUrl!,
                              errorWidget: (context, url, error) =>
                                  Image.asset(AppImages.noPhoto),
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
                          //   padding: const EdgeInsets.all(6),
                          //   fillColor: context.background,

                          //   width: width,
                          //   child: Text(
                          //     textAlign: TextAlign.end,
                          //     "${(product ?? cartProduct?.product)?.organization?.name ?? ''} ",
                          //     maxLines: 1,
                          //     style: const TextStyle(fontSize: 8),
                          //     overflow: TextOverflow.ellipsis,
                          //   ),
                          // ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (product?.price != null)
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    '${currencyFormatter.format(product?.price).replaceAll(".", " ")}  ${'common.sum'.tr()}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleSmall,
                  ),
                ),
              (product ?? cartProduct!.product)!.inCart == null
                  ? const SizedBox()
                  : AppButton(
                      width: context.isMobile ? context.width * .12 : 50,
                      isActive: product?.leftQuantity != 0,
                      fillColor:
                          (product ?? cartProduct!.product)!.inCart ?? false
                              ? AppColors.red
                              : context.primary,
                      text: const Icon(
                        KazeIcons.cartOutline,
                        color: AppColors.white,
                      ),
                      textColor: AppColors.white,
                      onPressed: authBloc.state ==
                              const AuthState.authenticated()
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
                            }
                          : () => router.push(const AuthRoute()),
                      size: MainAxisSize.min,
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      borderRadius: 4,
                    ),
            ],
          ),
          verticalSpace8,
        ],
      ),
    );
  }
}
