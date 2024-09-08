import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/features/auth/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:kansler/features/cart/domain/entities/cart_product.dart';
import 'package:kansler/features/cart/domain/repositories/cart.repository.dart';
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart';
import 'package:kansler/shared/services/logger/logger_service.dart';

part 'preorders_state.dart';
part 'preorders_event.dart';
part 'preorders_bloc.freezed.dart';

@injectable
class PreordersBloc extends Bloc<PreordersEvent, PreordersState> {
  final CartRepository _cartRepository;

  PreordersBloc(this._cartRepository) : super(const PreordersState()) {
    on<_Retry>(_onRetry);
    on<_AddToPreorders>(_onAddToPreorders);
    on<_DeleteProductInPreorders>(_onDeleteProductInPreorders);
    on<_DeleteProductsInPreorders>(_onDeleteProductsInPreorders);
    on<_UpdateProductInPreorders>(_onUpdateProductInPreorders);
    on<_GetPreordersPrice>(_onGetPreordersPrice);
    on<_GetPreordersProducts>(_onGetPreordersProducts);
    on<_ToCheckout>(_onToCheckout);

    add(const PreordersEvent.getPreordersProducts());
    add(const PreordersEvent.getPreordersPrice());

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !state.isMoreLoading) {
        add(const PreordersEvent.getPreordersProducts(isMore: true));
      }
    });

    checkoutController.addListener(() {
      if (checkoutController.position.pixels >=
              checkoutController.position.maxScrollExtent - 200 &&
          hasNext &&
          !state.isMoreLoading) {
        add(const PreordersEvent.getPreordersProducts(isMore: true));
      }
    });
  }

  List<TextEditingController> quantityControllers = [];
  final scrollController = ScrollController();

  final checkoutController = ScrollController();
  int pageNumber = 1;
  bool hasNext = true;

  void _onAddToPreorders(
      _AddToPreorders event, Emitter<PreordersState> emit) async {
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final res = await _cartRepository.addProductToPreorder(
      (productId: event.id, quantity: event.quantity),
    );

    res.fold((l) => {}, (r) {
      if (event.updateDependencies) {
        popularBloc.add(const PopularEvent.fetch());
        latestBloc.add(const LatestEvent.fetch());
      }

      _updateView();
    });
  }

  void _onDeleteProductInPreorders(
      _DeleteProductInPreorders event, Emitter<PreordersState> emit) async {
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    if (state.status == PreordersStatus.loaded) {
      final products = state.products.map((e) {
        if (e.product!.id == event.id) {
          return e.copyWith(quantity: 0);
        }
        return e;
      }).toList();

      products.removeWhere(
        (element) => element.quantity == 0,
      );

      emit(state.copyWith(products: products));
    }

    final res = await _cartRepository.deleteProductInPreorder(event.id);

    res.fold(
      (l) {
        _updateView();
        // log.e(l.toString());
      },
      (r) {
        popularBloc.add(const PopularEvent.fetch());
        latestBloc.add(const LatestEvent.fetch());
        add(const PreordersEvent.getPreordersPrice());
      },
    );
  }

  void _onDeleteProductsInPreorders(
      _DeleteProductsInPreorders event, Emitter<PreordersState> emit) async {
    final res = await _cartRepository.deleteProductsInPreorder(event.ids);

    res.fold((l) => log.e(l.toString()), (r) => _updateView());
  }

  void _onUpdateProductInPreorders(
      _UpdateProductInPreorders event, Emitter<PreordersState> emit) async {
    if (!state.products.any((element) => element.product!.id == event.id)) {
      return;
    }
    final res = await _cartRepository.updateProductInPreorder(
        (productId: event.id, quantity: event.quantity));

    res.fold((l) => _updateView(), (r) {
      add(const PreordersEvent.getPreordersPrice());
    });
  }

  void _onGetPreordersPrice(
      _GetPreordersPrice event, Emitter<PreordersState> emit) async {
    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

    if (authBloc.state != const AuthState.authenticated()) return;

    final res = await _cartRepository.getPreorderPrice();

    res.fold((l) {
      // emit(const PreordersState.error());
      // log.e(l.toString());
    }, (r) {
      emit(state.copyWith(price: r));
    });
  }

  void _onGetPreordersProducts(
      _GetPreordersProducts event, Emitter<PreordersState> emit) async {
    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);
    if (state.status == PreordersStatus.loaded && event.isMore) {
      emit(state.copyWith(isMoreLoading: true));
    }

    if (authBloc.state != const AuthState.authenticated()) return;

    if (!event.isMore) pageNumber = 1;

    final res = await _cartRepository.getPreorderProducts(pageNumber);
    final prices = await _cartRepository.getPreorderPrice();

    res.fold((l) {
      pageNumber = 1;
      // log.e(l.toString());
      // emit(const PreordersState.error());
    }, (r) {
      pageNumber++;
      hasNext = r.hasNext;

      if (!event.isMore) quantityControllers.clear();
      List.generate(
          r.products.length,
          (index) => quantityControllers.add(TextEditingController(
              text: r.products[index].quantity.toString())));
      if (state.status == PreordersStatus.loaded && event.isMore) {
        List<CartProduct> preordersProducts = [];
        preordersProducts.addAll(state.products);
        preordersProducts.addAll(r.products);

        emit(state.copyWith(products: preordersProducts, isMoreLoading: false));
        return;
      }

      emit(PreordersState(
        status: PreordersStatus.loaded,
        products: r.products,
        price: 0,
      ));
    });

    prices.fold((l) {
      // emit(const PreordersState.error());
      // log.e(l.toString());
    }, (r) {
      emit(state.copyWith(price: r));
    });
  }

  void _updateView() {
    add(const PreordersEvent.getPreordersProducts());
    add(const PreordersEvent.getPreordersPrice());
  }

  void _onRetry(_Retry event, Emitter<PreordersState> emit) {
    emit(const PreordersState(status: PreordersStatus.loading));
    _updateView();
  }

  void _onToCheckout(_ToCheckout event, Emitter<PreordersState> emit) {
    router.push(const CheckoutRoute());
  }
}