import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/orders/data/sourses/remote.dart';
import 'package:kansler/features/orders/data/sourses/remote.keys.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../../../cart/data/models/cart_product_dto.dart';
import '../models/orders_dto.dart';

@LazySingleton(as: OrdersRemoteSource)
class OrdersSourceRemoteImpl implements OrdersRemoteSource {
  final DioClient _client;

  OrdersSourceRemoteImpl(this._client);

  @override
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getOrder(
      int page) async {
    final res = await _client.getRequest(
        '${OrderRemoteKeys.orderApi}?page=$page', converter: (response) {
      final res = PaginationResponse.fromJson(response as Map<String, dynamic>);

      final orders = res.results.map((e) => OrdersDto.fromJson(e)).toList();

      return (hasNext: res.next != null, orders: orders);
    });

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> getOrderById(int id) async {
    final res = await _client.getRequest('${OrderRemoteKeys.orderApi}/$id',
        converter: (response) =>
            OrdersDto.fromJson(response as Map<String, dynamic>));

    return res;
  }

  @override
  Future<Either<Failure, ({List<CartProductDto> cartProducts, bool hasNext})>>
      getOrderProducts(int id, int page) async {
    final res = await _client.getRequest(
        '${OrderRemoteKeys.orderProducts.replaceAll('id', '$id')}?page=$page',
        converter: (response) {
      final res = PaginationResponse.fromJson(response as Map<String, dynamic>);

      final orders =
          res.results.map((e) => CartProductDto.fromJson(e)).toList();

      return (hasNext: res.next != null, cartProducts: orders);
    });

    return res;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getPreorder(
      int page) async {
    final res = await _client.getRequest(
        '${OrderRemoteKeys.orderApi}?page=$page', converter: (response) {
      final res = PaginationResponse.fromJson(response as Map<String, dynamic>);

      final orders = res.results.map((e) => OrdersDto.fromJson(e)).toList();

      return (hasNext: res.next != null, orders: orders);
    });

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> getPreorderById(int id) async {
    final res = await _client.getRequest('${OrderRemoteKeys.orderApi}/$id',
        converter: (response) =>
            OrdersDto.fromJson(response as Map<String, dynamic>));

    return res;
  }

  @override
  Future<Either<Failure, ({List<CartProductDto> cartProducts, bool hasNext})>>
      getPreorderProducts(int id, int page) async {
    final res = await _client.getRequest(
        '${OrderRemoteKeys.orderProducts.replaceAll('id', '$id')}?page=$page',
        converter: (response) {
      final res = PaginationResponse.fromJson(response as Map<String, dynamic>);

      final orders =
          res.results.map((e) => CartProductDto.fromJson(e)).toList();

      return (hasNext: res.next != null, cartProducts: orders);
    });

    return res;
  }
}
