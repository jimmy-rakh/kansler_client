import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/cart_product.dart';
import '../../domain/repositories/cart.repository.dart';
import '../models/create_cart_product_dto.dart';
import '../models/detele_cart_products.dart';
import '../models/update_cart_product.dart';
import '../sources/remote.dart';


@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartRemoteSource remoteSource;

  CartRepositoryImpl(this.remoteSource);

  @override
  Future<Either<Failure, void>> addProductToCart(
      ({int productId, int quantity}) data) async {
    final request = CreateCartProductDto(
      productId: data.productId,
      quantity: data.quantity,
    );

    final res = await remoteSource.addProductToCart(request);

    return res;
  }

  @override
  Future<Either<Failure, void>> deleteProductInCart(int productId) async {
    final res = await remoteSource.deleteProductInCart(productId);

    return res;
  }

  @override
  Future<Either<Failure, void>> deleteProductsInCart(List<int> ids) async {
    final request = DeteleCartProducts(ids: ids);

    final res = await remoteSource.deleteProductsInCart(request);

    return res;
  }

  @override
  Future<Either<Failure, int>> getCartPrice() async {
    final res = await remoteSource.getCartPrice();

    return res.fold((l) => Left(l), (r) => Right(r.price));
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<CartProduct> products})>>
      getCartProducts(int pageNumber) async {
    final res = await remoteSource.getCartProducts(pageNumber);

    return res.fold(
      (l) => Left(l),
      (r) => Right((
        hasNext: r.hasNext,
        products: r.products.map((e) => e.toEntity()).toList(),
      )),
    );
  }

  @override
  Future<Either<Failure, void>> updateProductInCart(
      ({int productId, int quantity}) data) async {
    final request = UpdateCartProduct(quantity: data.quantity);

    final res = await remoteSource.updateProductInCart(request, data.productId);

    return res;
  }

  @override
  Future<Either<Failure, void>> addProductToPreorder(
      ({int productId, int quantity}) data) async {
    final request = CreateCartProductDto(
      productId: data.productId,
      quantity: data.quantity,
    );

    final res = await remoteSource.addProductToPreorder(request);

    return res;
  }

  @override
  Future<Either<Failure, void>> deleteProductInPreorder(int productId) async {
    final res = await remoteSource.deleteProductInPreorder(productId);

    return res;
  }

  @override
  Future<Either<Failure, void>> deleteProductsInPreorder(List<int> ids) async {
    final request = DeteleCartProducts(ids: ids);

    final res = await remoteSource.deleteProductsInPreorder(request);

    return res;
  }

  @override
  Future<Either<Failure, int>> getPreorderPrice() async {
    final res = await remoteSource.getPreorderPrice();

    return res.fold((l) => Left(l), (r) => Right(r.price));
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<CartProduct> products})>>
      getPreorderProducts(int pageNumber) async {
    final res = await remoteSource.getPreorderProducts(pageNumber);

    return res.fold(
      (l) => Left(l),
      (r) => Right((
        hasNext: r.hasNext,
        products: r.products.map((e) => e.toEntity()).toList(),
      )),
    );
  }

  @override
  Future<Either<Failure, void>> updateProductInPreorder(
      ({int productId, int quantity}) data) async {
    final request = UpdateCartProduct(quantity: data.quantity);

    final res = await remoteSource.updateProductInPreorder(request, data.productId);

    return res;
  }
}
