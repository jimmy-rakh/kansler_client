import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../cart/domain/entities/cart_product.dart';
import '../../data/models/orders_dto.dart';

abstract class OrdersRepository {
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getOrder(
      int page);

  Future<Either<Failure, OrdersDto>> getOrderById(int id);

  Future<Either<Failure, ({bool hasNext, List<CartProduct> cartProducts})>>
      getOrderProducts(int id, int page);
}
