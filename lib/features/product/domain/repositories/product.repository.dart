import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/product.entity.dart';


abstract class ProductRepository {
  Future<Either<Failure, ProductEntity>> fetchProduct(int id);
}
