import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/category.entitity.dart';
import '../repositories/categories.repository.dart';

@injectable
class GetCategoryChildrenUseCase
    implements
        UseCase<List<CategoryEntitity>,
            ({int categoryId, int? pageSize, int? pageNumber})> {
  final CategoriesRepository _repo;

  GetCategoryChildrenUseCase(this._repo);

  @override
  Future<Either<Failure, List<CategoryEntitity>>> call(
          ({int categoryId, int? pageSize, int? pageNumber}) params) =>
      _repo.getCategoriesChildren(
        params.categoryId,
        params.pageNumber,
        params.pageSize,
      );
}
