import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../app/router.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../../../product/domain/entities/product.entity.dart';
import '../../../../../product/domain/entities/product_data.entity.dart';
import '../../../../domain/entities/search.entity.dart';
import '../../../../domain/usecases/organizations.usecase.dart';
import '../../../../domain/usecases/search.usecase.dart';
import '../brands/brands_bloc.dart';

part 'search_state.dart';

part 'search_event.dart';

part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUseCase _useCase;
  final OrganizationsUseCase _organizationsUseCase;

  SearchBloc(this._useCase, this._organizationsUseCase)
      : super(
          const SearchState.loadInProgress(),
        ) {
    on<_Search>(_onSearch);
    on<_ChangeListType>(_onChangeListType);
    on<_ShowFilters>(_onShowFilters);
    on<_ChangeCartState>(_onChangeCartState);
    on<_Init>(_onInit);
    on<_ChooseCategories>(_onChooseCategories);
    on<_ChooseOrganizations>(_onChooseOrganizations);
    on<_ChooseBrands>(_onChooseBrands);
    on<_SetBaseView>(_onSetBaseView);
    on<_AddFilter>(_onAddFilter);
    on<_OrderBy>(_orderBy);
    on<_PriceFrom>(_priceFrom);
    on<_PriceTo>(_priceTo);

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Success).isMoreLoading) {
        add(const SearchEvent.search(isMore: true));
      }
    });
  }

  final fieldController = TextEditingController();
  final priceFromController = TextEditingController();
  final priceToController = TextEditingController();

  int pageNumber = 1;
  bool hasNext = true;
  List<TextEditingController> quantityControllers = [];
  final scrollController = ScrollController();

  void _onSearch(_Search event, Emitter<SearchState> emit) async {
    if (event.title != null) {
      fieldController.text = event.title!;
    }

    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);
    SearchEntity? request = state is _Success
        ? (state as _Success)
            .filterData
            ?.copyWith(title: event.title ?? fieldController.text)
        : SearchEntity(title: event.title ?? fieldController.text);

    if (request == null) return;

    if (!event.isMore) {
      pageNumber = 1;
      request = request.copyWith(pageNumber: 1);
      emit(const SearchState.loadInProgress());
    } else {
      emit((state as _Success).copyWith(isMoreLoading: true));
    }

    final result = await _useCase.call(request);

    result.fold((l) => log.e(l), (r) {
      request = request!.copyWith(pageNumber: request!.pageNumber + 1);

      if (authBloc.state == const AuthState.authenticated()) {
        quantityControllers.addAll(List.generate(
          r.products.length,
          (index) => TextEditingController(text: '1'),
        ));
      }

      if (event.isMore) {
        final currentState = (state as _Success);

        emit(currentState.copyWith(
          products: currentState.products! + r.products,
          filterData: request,
          isMoreLoading: false,
        ));
        return;
      }

      emit(SearchState.success(products: r.products, filterData: request!));
    });
  }

  void _onChangeListType(event, Emitter<SearchState> emit) {
    if (state is! _Success) return;

    emit((state as _Success).copyWith(isList: !(state as _Success).isList));
  }

  void _onShowFilters(_ShowFilters event, Emitter<SearchState> emit) async {
    final res = await router
            .push(FilterRoute(searchData: (state as _Success).filterData!))
        as SearchEntity?;

    if (res != null) {
      emit((state as _Success)
          .copyWith(filterData: res.copyWith(pageNumber: 1)));
      priceFromController.text = res.priceFrom?.toString() ?? '';
      priceToController.text = res.priceTo?.toString() ?? '';
      add(const SearchEvent.search());
    }
  }

  void _onChangeCartState(_ChangeCartState event, Emitter<SearchState> emit) {
    final currentState = state as _Success;

    final products = currentState.products!.map((e) {
      if (e.id == event.product.id) {
        return event.product.copyWith(inCart: !event.product.inCart!,inPreorder: !event.product.inPreorder!);
      }
      return e;
    }).toList();

    emit(currentState.copyWith(products: products));
  }

  void _onInit(_Init event, Emitter<SearchState> emit) async {
    router.navigatorKey.currentContext!.read<BrandsBloc>();
    final res = await _organizationsUseCase.call(1);

    res.fold((l) => log.e(l), (r) {
      emit(SearchState.success(
        organizations: r.products,
        products: [],
      ));
    });
  }

  void _onChooseCategories(_ChooseCategories event, Emitter<SearchState> emit) {
    emit((state as _Success).copyWith(activePage: 1));
  }

  void _onChooseOrganizations(
      _ChooseOrganizations event, Emitter<SearchState> emit) {}

  void _onChooseBrands(_ChooseBrands event, Emitter<SearchState> emit) {
    emit((state as _Success).copyWith(activePage: 2));
  }

  void _onSetBaseView(_SetBaseView event, Emitter<SearchState> emit) {
    emit((state as _Success).copyWith(activePage: 0));
  }

  void _onAddFilter(_AddFilter event, Emitter<SearchState> emit) {
    priceFromController.text = event.searchData.priceFrom?.toString() ?? '';
    priceToController.text = event.searchData.priceTo?.toString() ?? '';
    emit((state as _Success).copyWith(filterData: event.searchData));
  }

  void _orderBy(_OrderBy event, Emitter<SearchState> emit) async {
    final curr = (state as _Success);
    emit(curr.copyWith(
        filterData: curr.filterData?.copyWith(
            orderBy: event.orderBy == "По дате"
                ? "created_at"
                : event.orderBy == "По Алфавиту"
                    ? "alfabetic"
                    : event.orderBy == "Подешевле"
                        ? "price"
                        : event.orderBy == "Подороже"
                            ? "-price"
                            : event.orderBy == "Хиты дня"
                                ? "promotion"
                                : event.orderBy == "Акции"
                                    ? "discount"
                                    : event.orderBy == "Новинки"
                                        ? "new"
                                        : event.orderBy == "Популярные"
                                            ? "bestseller"
                                            : event.orderBy)));
  }

  void _priceFrom(_PriceFrom event, Emitter<SearchState> emit) async {
    final curr = (state as _Success);
    emit(curr.copyWith(
        filterData: curr.filterData
            ?.copyWith(priceFrom: int.parse(priceFromController.text))));
  }

  void _priceTo(_PriceTo event, Emitter<SearchState> emit) async {
    final curr = (state as _Success);
    emit(curr.copyWith(
        filterData: curr.filterData
            ?.copyWith(priceTo: int.parse(priceToController.text))));
  }
}
