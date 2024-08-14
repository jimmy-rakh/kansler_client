import 'package:flutter/widgets.dart';
import 'package:kansler/features/product/domain/entities/product.entity.dart';
import 'package:kansler/features/cart/domain/entities/cart_product.dart';
import 'package:kansler/features/product/domain/domain.dart';
import 'package:kansler/features/product/presentation/widgets/product_cards/grid_card.dart';
import 'package:kansler/features/product/presentation/widgets/product_cards/list_card.dart';

abstract class ProductCard implements Widget {
  const factory ProductCard.list({
    ProductEntity product,
    CartProduct? cartProduct,
    required TextEditingController fieldController,
    required VoidCallback onPressed,
    required VoidCallback onCart,
    bool isBusy,
    bool showActions,
  }) = ProductListCard;

  const factory ProductCard.grid({
    ProductEntity product,
    CartProduct? cartProduct,
    TextEditingController? fieldController,
    VoidCallback? onPressed,
    required VoidCallback onCart,
    double width,
    double height,
    bool isBusy,
  }) = ProductGridCard;
}
