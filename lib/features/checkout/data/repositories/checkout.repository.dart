import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../orders/data/models/orders_dto.dart';
import '../../domain/repositories/checkout.repository.dart';
import '../models/create_order_request.dart';
import '../sources/remote.dart';

@Injectable(as: CheckoutRepository)
class CheckoutRepositoryImpl implements CheckoutRepository {
  final CheckoutRemoteSource _checkoutRemoteSource;

  CheckoutRepositoryImpl(this._checkoutRemoteSource);
  @override
  Future<Either<Failure, OrdersDto>> createOrder(
      CreateOrderRequest request) async {
    final res = await _checkoutRemoteSource.createOrder(request);

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> createPreorder(
      CreateOrderRequest request) async {
    final res = await _checkoutRemoteSource.createPreorder(request);

    return res;
  }
}
