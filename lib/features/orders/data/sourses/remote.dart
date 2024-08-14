import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../cart/data/models/cart_product_dto.dart';
import '../models/orders_dto.dart';

abstract class OrdersRemoteSource {
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getOrder(
      int page);

  Future<Either<Failure, OrdersDto>> getOrderById(int id);

  Future<Either<Failure, ({bool hasNext, List<CartProductDto> cartProducts})>>
      getOrderProducts(int id, int page);
}
