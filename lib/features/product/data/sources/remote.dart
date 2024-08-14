import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../models/product_dto.dart';

abstract class ProductRemoteDataSource {
  Future<Either<Failure, ProductDto>> fetchProduct(int id);
}
