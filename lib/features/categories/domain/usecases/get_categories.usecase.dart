import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/category.entitity.dart';
import '../repositories/categories.repository.dart';


@injectable
class GetCategoriesUseCase implements UseCase<List<CategoryEntitity>, NoParams> {
  final CategoriesRepository _repo;

  GetCategoriesUseCase(this._repo);

  @override
  Future<Either<Failure, List<CategoryEntitity>>> call(NoParams params) =>
      _repo.getCategories();
}
