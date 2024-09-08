import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/cart_dto.dart';
import '../models/cart_product_dto.dart';
import '../models/create_cart_product_dto.dart';
import '../models/detele_cart_products.dart';
import '../models/update_cart_product.dart';

abstract class CartRemoteSource {
  Future<Either<Failure, CartDto>> getCartPrice();

  Future<Either<Failure, ({bool hasNext, List<CartProductDto> products})>>
      getCartProducts(int pageNumber);

  Future<Either<Failure, void>> addProductToCart(CreateCartProductDto data);

  Future<Either<Failure, void>> deleteProductsInCart(DeteleCartProducts data);

  Future<Either<Failure, void>> updateProductInCart(
      UpdateCartProduct data, int productId);

  Future<Either<Failure, void>> deleteProductInCart(int productId);

  Future<Either<Failure, CartDto>> getPreorderPrice();

  Future<Either<Failure, ({bool hasNext, List<CartProductDto> products})>>
      getPreorderProducts(int pageNumber);

  Future<Either<Failure, void>> addProductToPreorder(CreateCartProductDto data);

  Future<Either<Failure, void>> deleteProductsInPreorder(
      DeteleCartProducts data);

  Future<Either<Failure, void>> updateProductInPreorder(
      UpdateCartProduct data, int productId);

  Future<Either<Failure, void>> deleteProductInPreorder(int productId);
}
