import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../orders/data/models/orders_dto.dart';

abstract class CheckoutRepository {
    Future<Either<Failure, OrdersDto>> createOrder();

}
