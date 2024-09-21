import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/features/search/domain/entities/search.entity.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../product/domain/entities/product.entity.dart';
import '../../../../domain/entities/category.entitity.dart';
import '../../../../domain/usecases/get_category_children.usecase.dart';
import '../../../../domain/usecases/get_category_products.usecase.dart';

part 'subcategory_state.dart';
part 'subcategory_event.dart';
part 'subcategory_bloc.freezed.dart';

@lazySingleton
class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  final GetCategoryChildrenUseCase _categoryChildrenUseCase;
  final GetCategoryProducts _getCategoryProducts;

  SubcategoryBloc(this._categoryChildrenUseCase, this._getCategoryProducts)
      : super(const SubcategoryState.loadInProgress()) {
    on<_Init>(_onInit);
    on<_LoadSubcategories>(_onLoadSubcategories);
    on<_LoadProducts>(_onLoadProducts);
    on<_ChooseSubcategory>(_onChooseSubcategory);
    on<_ListTypeToggle>(_onListTypeToggle);
    on<_ChangeCartState>(_onChangeCartState);
    on<_ShowFilters>(_onShowFilters);
  }

  int pageNumber = 1;
  int pageSize = 30;
  bool hasNext = true;
  List<TextEditingController> quantityControllers = [];
  ScrollController scrollController = ScrollController();

  void _onLoadProducts(
      _LoadProducts event, Emitter<SubcategoryState> emit) async {
    if (state is! _Ready) return;

    final currState = state as _Ready;

    emit(currState.copyWith(
      isPaginationLoading: pageNumber != 1,
      isProductsLoading: pageNumber == 1 && event.categoryId != null,
    ));

    List<ProductEntity> products = [];

    final request = currState.filterData ?? SearchEntity(title: '');

    final res = await _getCategoryProducts.call((
      request: request,
      categoryId: event.categoryId ?? currState.category.id,
      pageNumber: pageNumber,
      pageSize: pageSize,
    ));

    if (pageNumber == 1 && event.categoryId != null) {
      products.clear();
    } else {
      products.addAll(currState.products);
    }

    if (products.isEmpty) {
      pageNumber = 1;
    }

    res.fold(log.e, (r) {
      hasNext = r.hasNext;
      if (r.hasNext) pageNumber++;
      products.addAll(r.products);
      List.generate(r.products.length,
          (index) => quantityControllers.add(TextEditingController(text: '1')));
      emit(
        (state as _Ready).copyWith(
          filterData: request,
          products: products,
          isProductsLoading: false,
          isPaginationLoading: false,
        ),
      );
    });
  }

  void _onLoadSubcategories(
      _LoadSubcategories event, Emitter<SubcategoryState> emit) async {
    if (state is! _Ready) return;

    final currState = state as _Ready;

    emit(currState.copyWith(isCategoriesLoading: true));

    final res = await _categoryChildrenUseCase
        .call((categoryId: event.categoryId, pageNumber: 1, pageSize: 100));

    res.fold(
      log.e,
      (r) => emit(
        currState.copyWith(categories: r, isCategoriesLoading: false),
      ),
    );
  }

  void _onInit(_Init event, Emitter<SubcategoryState> emit) {
    pageNumber = 1;
    hasNext = true;
    quantityControllers.clear();
    emit(SubcategoryState.ready(category: event.category));
    add(SubcategoryEvent.loadProducts(event.category.id));

    if (state is _Ready) {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 200 &&
            hasNext &&
            !(state as _Ready).isPaginationLoading) {
          add(
            SubcategoryEvent.loadProducts(
                (state as _Ready).selectedCategory?.id),
          );
        }
      });
    }

    if (!event.category.hasChildren) return;
    add(SubcategoryEvent.loadSubcategories(event.category.id));
  }

  void _onChooseSubcategory(
      _ChooseSubcategory event, Emitter<SubcategoryState> emit) {
    if (state is! _Ready) return;

    final currState = state as _Ready;

    CategoryEntitity? category = event.category;

    if (event.category.id == currState.selectedCategory?.id) category = null;

    emit(currState.copyWith(
      selectedCategory: category,
      isProductsLoading: true,
    ));

    pageNumber = 1;

    add(SubcategoryEvent.loadProducts(category?.id ?? currState.category.id));
  }

  void onUnfocus() {
    for (var controller in quantityControllers) {
      if ((int.tryParse(controller.text) ?? 0) >= 1) return;

      controller.text = '1';
    }
  }

  void _onListTypeToggle(
      _ListTypeToggle event, Emitter<SubcategoryState> emit) {
    final currState = state as _Ready;

    emit(currState.copyWith(isList: !currState.isList));
  }

  void _onChangeCartState(
      _ChangeCartState event, Emitter<SubcategoryState> emit) {
    final currentState = state as _Ready;

    final products = currentState.products.map((e) {
      if (e.id == event.product.id) {
        if (event.type == CheckoutType.order) {
          return event.product.copyWith(inCart: !event.product.inCart!);
        }

        if (event.type == CheckoutType.preorder) {
          return event.product.copyWith(inPreorder: !event.product.inPreorder!);
        }
      }
      return e;
    }).toList();

    emit(currentState.copyWith(products: products));
  }

  void _onShowFilters(
      _ShowFilters event, Emitter<SubcategoryState> emit) async {
    final category = (state as _Ready).category;

    final res = await router.push(FilterRoute(
      searchData: (state as _Ready).filterData!,
      category: category,
    )) as SearchEntity?;

    if (res != null) {
      emit((state as _Ready).copyWith(filterData: res.copyWith(pageNumber: 1)));
      add(SubcategoryEvent.loadProducts(category.id));
    }
  }
}
