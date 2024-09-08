import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/cart/data/sources/remote.dart';
import 'package:kansler/features/cart/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../models/cart_dto.dart';
import '../models/cart_product_dto.dart';
import '../models/create_cart_product_dto.dart';
import '../models/detele_cart_products.dart';
import '../models/update_cart_product.dart';

@LazySingleton(as: CartRemoteSource)
class CartRemoteSourceImpl implements CartRemoteSource {
  final DioClient _dio;

  CartRemoteSourceImpl(this._dio);

  @override
  Future<Either<Failure, void>> addProductToCart(
      CreateCartProductDto data) async {
    final result = await _dio.postRequest(
      CartRemoteKeys.cartProducts,
      data: data.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> deleteProductInCart(int productId) async {
    final result =
        await _dio.deleteRequest('${CartRemoteKeys.cartProducts}/$productId');

    return result;
  }

  @override
  Future<Either<Failure, void>> deleteProductsInCart(
      DeteleCartProducts data) async {
    final result = await _dio.deleteRequest(
      CartRemoteKeys.cartProducts,
      data: data.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, CartDto>> getCartPrice() async {
    final result = await _dio.getRequest(
      CartRemoteKeys.cartApi,
      converter: (response) =>
          CartDto.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<CartProductDto> products})>>
      getCartProducts(int pageNumber) async {
    final result = await _dio.getRequest(
      '${CartRemoteKeys.cartProducts}?page=$pageNumber',
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            res.results.map((e) => CartProductDto.fromJson(e)).toList();

        return (hasNext: res.next != null, products: products);
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> updateProductInCart(
      UpdateCartProduct data, int productId) async {
    final result = await _dio.putRequest(
      '${CartRemoteKeys.cartProducts}/$productId',
      data: data.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> addProductToPreorder(
      CreateCartProductDto data) async {
    final result = await _dio.postRequest(
      CartRemoteKeys.preOrderProducts,
      data: data.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> deleteProductInPreorder(int productId) async {
    final result =
        await _dio.deleteRequest('${CartRemoteKeys.preOrderProducts}/$productId');

    return result;
  }

  @override
  Future<Either<Failure, void>> deleteProductsInPreorder(
      DeteleCartProducts data) async {
    final result = await _dio.deleteRequest(
      CartRemoteKeys.preOrderProducts,
      data: data.toJson(),
    );

    return result;
  }

  @override
  Future<Either<Failure, CartDto>> getPreorderPrice() async {
    final result = await _dio.getRequest(
      CartRemoteKeys.preOrderCart,
      converter: (response) =>
          CartDto.fromJson(response as Map<String, dynamic>),
    );

    return result;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<CartProductDto> products})>>
      getPreorderProducts(int pageNumber) async {
    final result = await _dio.getRequest(
      '${CartRemoteKeys.preOrderProducts}?page=$pageNumber',
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            res.results.map((e) => CartProductDto.fromJson(e)).toList();

        return (hasNext: res.next != null, products: products);
      },
    );

    return result;
  }

  @override
  Future<Either<Failure, void>> updateProductInPreorder(
      UpdateCartProduct data, int productId) async {
    final result = await _dio.putRequest(
      '${CartRemoteKeys.preOrderProducts}/$productId',
      data: data.toJson(),
    );

    return result;
  }
}
