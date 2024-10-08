import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/orders/data/models/rating.dart';
import '../../../../core/error/failure.dart';
import '../../../cart/domain/entities/cart_product.dart';
import '../../domain/repositories/order.repository.dart';
import '../models/orders_dto.dart';
import '../sourses/remote.dart';

@LazySingleton(as: OrdersRepository)
class OrderRepositoryImpl implements OrdersRepository {
  final OrdersRemoteSource _ordersRemoteSource;

  OrderRepositoryImpl(this._ordersRemoteSource);
  @override
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getOrder(
      int page) async {
    final res = await _ordersRemoteSource.getOrder(page);

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> getOrderById(int id) async {
    final res = await _ordersRemoteSource.getOrderById(id);

    return res;
  }

  @override
  Future<Either<Failure, void>> updateRating(({num rating, int id}) data) async {
    final request = RatingDto(rating: data.rating);

    final res = await _ordersRemoteSource.updateRating(request, data.id);

    return res;
  }

  @override
  Future<Either<Failure, ({List<CartProduct> cartProducts, bool hasNext})>>
      getOrderProducts(int id, int page) async {
    final res = await _ordersRemoteSource.getOrderProducts(id, page);

    return res.fold(
      (l) => Left(l),
      (r) {
        final result = r.cartProducts.map((e) => e.toEntity()).toList();

        return Right((hasNext: r.hasNext, cartProducts: result));
      },
    );
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<OrdersDto> orders})>> getPreorder(
      int page) async {
    final res = await _ordersRemoteSource.getPreorder(page);

    return res;
  }

  @override
  Future<Either<Failure, OrdersDto>> getPreorderById(int id) async {
    final res = await _ordersRemoteSource.getPreorderById(id);

    return res;
  }

  @override
  Future<Either<Failure, ({List<CartProduct> cartProducts, bool hasNext})>>
      getPreorderProducts(int id, int page) async {
    final res = await _ordersRemoteSource.getPreorderProducts(id, page);

    return res.fold(
      (l) => Left(l),
      (r) {
        final result = r.cartProducts.map((e) => e.toEntity()).toList();

        return Right((hasNext: r.hasNext, cartProducts: result));
      },
    );
  }
}
