import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/features/auth/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:kansler/features/cart/domain/entities/cart_product.dart';
import 'package:kansler/features/cart/domain/repositories/cart.repository.dart';
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/hit/hit_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart';

part 'preorders_state.dart';
part 'preorders_event.dart';
part 'preorders_bloc.freezed.dart';

@injectable
class PreordersBloc extends Bloc<PreordersEvent, PreordersState> {
  final CartRepository _cartRepository;

  PreordersBloc(this._cartRepository)
      : super(const PreordersState.loadInProgress()) {
    on<_Retry>(_onRetry);
    on<_AddToPreorders>(_onAddToPreorders);
    on<_DeleteProductInPreorders>(_onDeleteProductInPreorders);
    on<_UpdateProductInPreorders>(_onUpdateProductInPreorders);
    on<_GetPreordersPrice>(_onGetPreordersPrice);
    on<_GetPreordersProducts>(_onGetPreordersProducts);
    on<_ToCheckout>(_onToCheckout);

    // add(const PreordersEvent.getPreordersProducts());
    // add(const PreordersEvent.getPreordersPrice());

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Ready).isMoreLoading) {
        add(const PreordersEvent.getPreordersProducts(isMore: true));
      }
    });

    checkoutController.addListener(() {
      if (checkoutController.position.pixels >=
              checkoutController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Ready).isMoreLoading) {
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
    final discount =
        BlocProvider.of<DiscountsBloc>(router.navigatorKey.currentContext!);
    final hits = BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);
    if (kIsWeb) {
      emit(state is _Ready
          ? (state as _Ready).copyWith(products: [], price: 0)
          : const PreordersState.ready());
    }
    final res = await _cartRepository.addProductToPreorder(
      (productId: event.id, quantity: event.quantity),
    );

    res.fold((l) => {}, (r) {
      if (event.updateDependencies) {
        // popularBloc.add(const PopularEvent.fetch());
        // latestBloc.add(const LatestEvent.fetch());
        // hits.add(const HitEvent.fetch());
        // discount.add(const DiscountsEvent.fetch());
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
    final discount =
        BlocProvider.of<DiscountsBloc>(router.navigatorKey.currentContext!);
    final hits = BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);
    if ((state as _Ready).status == PreordersStatus.loaded) {
      final products = (state as _Ready).products.map((e) {
        if (e.product!.id == event.id) {
          return e.copyWith(quantity: 0);
        }
        return e;
      }).toList();
      if (kIsWeb) {
        emit((state as _Ready).copyWith(products: [], price: 0));
        await Future.delayed(const Duration(milliseconds: 100));
      }

      products.removeWhere(
        (element) => element.quantity == 0,
      );

      emit((state as _Ready).copyWith(products: products));
    }

    final res = await _cartRepository.deleteProductInPreorder(event.id);

    res.fold(
      (l) {
        _updateView();
        // log.e(l.toString());
      },
      (r) {
        // popularBloc.add(const PopularEvent.fetch());
        // latestBloc.add(const LatestEvent.fetch());
        // hits.add(const HitEvent.fetch());
        // discount.add(const DiscountsEvent.fetch());
        // add(const PreordersEvent.getPreordersPrice());
      },
    );
  }

  void _onUpdateProductInPreorders(
      _UpdateProductInPreorders event, Emitter<PreordersState> emit) async {
    if (!(state as _Ready)
        .products
        .any((element) => element.product!.id == event.id)) {
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
    final res = await _cartRepository.getPreorderPrice();

    res.fold((l) {
      // emit(const PreordersState.error());
      // log.e(l.toString());
    }, (r) {
      if (state is _LoadInProgress) {
        emit(PreordersState.ready(price: r));
        return;
      }
      emit((state as _Ready).copyWith(price: r));
    });
  }

  void _onGetPreordersProducts(
      _GetPreordersProducts event, Emitter<PreordersState> emit) async {
    if (state is _LoadInProgress) {
      emit(const PreordersState.ready(products: [], price: 0));
      return;
    }
    if ((state as _Ready).status == PreordersStatus.loaded && event.isMore) {
      emit((state as _Ready).copyWith(isMoreLoading: true));
    }

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
      if ((state as _Ready).status == PreordersStatus.loaded && event.isMore) {
        List<CartProduct> preordersProducts = [];
        preordersProducts.addAll((state as _Ready).products);
        preordersProducts.addAll(r.products);

        emit((state as _Ready)
            .copyWith(products: preordersProducts, isMoreLoading: false));
        return;
      }

      emit(PreordersState.ready(
        status: PreordersStatus.loaded,
        products: r.products,
        price: 0,
      ));
    });

    prices.fold((l) {
      // emit(const PreordersState.error());
      // log.e(l.toString());
    }, (r) {
      emit((state as _Ready).copyWith(price: r));
    });
  }

  void _updateView() {
    add(const PreordersEvent.getPreordersProducts());
    add(const PreordersEvent.getPreordersPrice());
  }

  void _onRetry(_Retry event, Emitter<PreordersState> emit) {
    emit(const PreordersState.ready(status: PreordersStatus.loading));
    _updateView();
  }

  void _onToCheckout(_ToCheckout event, Emitter<PreordersState> emit) {
    router.push(CheckoutRoute(type: CheckoutType.preorder));
  }
}
