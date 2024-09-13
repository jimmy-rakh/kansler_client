import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/checkout/data/sources/remote.dart';
import 'package:kansler/features/checkout/data/sources/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../orders/data/models/orders_dto.dart';
import '../models/create_order_request.dart';

@Injectable(as: CheckoutRemoteSource)
class CheckoutRemoteSourceImpl implements CheckoutRemoteSource {
  final DioClient _client;

  CheckoutRemoteSourceImpl(this._client);

  @override
  Future<Either<Failure, OrdersDto>> createOrder(
      CreateOrderRequest request) async {
    final res = await _client.postRequest(
      CheckoutRemoteKeys.checkoutApi,
      data: request.toJson(),
      converter: (response) =>
          OrdersDto.fromJson(response as Map<String, dynamic>),
    );

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> createPreorder(CreateOrderRequest request) async {
     final res = await _client.postRequest(
      CheckoutRemoteKeys.precheckoutApi,
      data: request.toJson(),
      converter: (response) =>
          OrdersDto.fromJson(response as Map<String, dynamic>),
    );

    return res;
  }
}
