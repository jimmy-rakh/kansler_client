import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../orders/data/models/orders_dto.dart';
import '../models/create_order_request.dart';


abstract class CheckoutRemoteSource {
  Future<Either<Failure, OrdersDto>> createOrder(CreateOrderRequest request);

  Future<Either<Failure, OrdersDto>> createPreorder(CreateOrderRequest request);
}
