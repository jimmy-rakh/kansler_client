import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/cart_product.dart';

abstract class CartRepository {
  Future<Either<Failure, int>> getCartPrice();

  Future<Either<Failure, ({bool hasNext, List<CartProduct> products})>>
      getCartProducts(int pageNumber);

  Future<Either<Failure, void>> addProductToCart(
      ({int productId, int quantity}) data);

  Future<Either<Failure, void>> deleteProductsInCart(List<int> ids);

  Future<Either<Failure, void>> updateProductInCart(
      ({int productId, int quantity}) data);

  Future<Either<Failure, void>> deleteProductInCart(int productId);

  Future<Either<Failure, int>> getPreorderPrice();

  Future<Either<Failure, ({bool hasNext, List<CartProduct> products})>>
      getPreorderProducts(int pageNumber);

  Future<Either<Failure, void>> addProductToPreorder(
      ({int productId, int quantity}) data);

  Future<Either<Failure, void>> deleteProductsInPreorder(List<int> ids);

  Future<Either<Failure, void>> updateProductInPreorder(
      ({int productId, int quantity}) data);

  Future<Either<Failure, void>> deleteProductInPreorder(int productId);
}
