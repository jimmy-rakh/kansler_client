import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecase/usecase.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../domain/entities/category.entitity.dart';
import '../../../../domain/usecases/get_categories.usecase.dart';
import '../../../../domain/usecases/get_category_children.usecase.dart';


part 'categories_state.dart';
part 'categories_event.dart';
part 'categories_bloc.freezed.dart';

@lazySingleton
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetCategoryChildrenUseCase _getCategoryChildrenUseCase;

  CategoriesBloc(
    this._getCategoriesUseCase,
    this._getCategoryChildrenUseCase,
  ) : super(const CategoriesState.loadInProgress()) {
    on<_FetchCategories>(_onFetchCategories);
    on<_FetchCategoryChildren>(_onFetchCategoryChildren);

    add(const CategoriesEvent.fetchCategories());
  }

  void _onFetchCategories(
      _FetchCategories event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loadInProgress());
    final result = await _getCategoriesUseCase.call(NoParams());

    result.fold(log.e, (r) => emit(CategoriesState.ready(r)));
  }

  void _onFetchCategoryChildren(
      _FetchCategoryChildren event, Emitter<CategoriesState> emit) async {
    if (state is! _Ready) return;

    final crState = state as _Ready;

    if (event.isExpanded) return;

    final result = await _getCategoryChildrenUseCase.call((
      categoryId: event.categoryId,
      pageNumber: 1,
      pageSize: 100,
    ));

    List<CategoryEntitity> categories = [];

    result.fold((l) => null, (r) {
      for (var category in crState.categories) {
        if (category.id == event.categoryId) {
          categories.add(category.copyWith(children: r));
          continue;
        }
        categories.add(category);
      }
      emit(crState.copyWith(categories: categories));
    });
  }
}
