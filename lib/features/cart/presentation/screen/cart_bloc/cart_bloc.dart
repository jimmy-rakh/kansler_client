import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../app/router.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../home/presentation/blocs/discounts/discounts_bloc.dart';
import '../../../../home/presentation/blocs/hit/hit_bloc.dart';
import '../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../domain/entities/cart_product.dart';
import '../../../domain/usecases/add_product_to_cart.usecase.dart';
import '../../../domain/usecases/delete_product_in_cart.usecase.dart';
import '../../../domain/usecases/get_cart_price.usecase.dart';
import '../../../domain/usecases/get_cart_products.usecase.dart';
import '../../../domain/usecases/update_product_in_cart.usecase.dart';

part 'cart_state.dart';

part 'cart_event.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final AddProductToCartUseCase _addProductToCartUseCase;
  final DeleteProductInCartUsecase _deleteProductInCartUsecase;
  final UpdateProductInCartUseCase _updateProductInCartUseCase;
  final GetCartPriceUseCase _getCartPriceUseCase;
  final GetCartProductsUseCase _getCartProductsUseCase;

  CartBloc(
    this._addProductToCartUseCase,
    this._deleteProductInCartUsecase,
    this._updateProductInCartUseCase,
    this._getCartPriceUseCase,
    this._getCartProductsUseCase,
  ) : super(const CartState.loadInProgress()) {
    on<_Retry>(_onRetry);
    on<_AddToCart>(_onAddToCart);
    on<_DeleteProductInCart>(_onDeleteProductInCart);
    on<_UpdateProductInCart>(_onUpdateProductInCart);
    on<_GetCartPrice>(_onGetCartPrice);
    on<_GetCartProducts>(_onGetCartProducts);
    on<_ToCheckout>(_onToCheckout);

    add(const CartEvent.getCartProducts());
    add(const CartEvent.getCartPrice());
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Ready).isMoreLoading) {
        add(const CartEvent.getCartProducts(isMore: true));
      }
    });

    checkoutController.addListener(() {
      if (checkoutController.position.pixels >=
              checkoutController.position.maxScrollExtent - 200 &&
          hasNext &&
          !(state as _Ready).isMoreLoading) {
        add(const CartEvent.getCartProducts(isMore: true));
      }
    });
  }

  List<TextEditingController> quantityControllers = [];
  final scrollController = ScrollController();

  final checkoutController = ScrollController();
  int pageNumber = 1;
  bool hasNext = true;

  void _onAddToCart(_AddToCart event, Emitter<CartState> emit) async {
    print('object');
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final discount =
    BlocProvider.of<DiscountsBloc>(router.navigatorKey.currentContext!);
    final hits =
    BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);

    // if (kIsWeb && state is _Ready) {
    //   emit((state as _Ready).copyWith(products: []));
    // }
    final res = await _addProductToCartUseCase
        .call((productId: event.id, quantity: event.quantity));

    res.fold((l) => {}, (r) {
      if (event.updateDependencies) {
        // popularBloc.add(const PopularEvent.fetch());
        // latestBloc.add(const LatestEvent.fetch());
        // hits.add(const HitEvent.fetch());
        // discount.add(const DiscountsEvent.fetch());
      }
      // emit(const CartState.loadInProgress());
      _updateView();
    });
  }

  void _onDeleteProductInCart(
      _DeleteProductInCart event, Emitter<CartState> emit) async {
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final discount =
    BlocProvider.of<DiscountsBloc>(router.navigatorKey.currentContext!);
    final hits =
    BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);
    if (state is _Ready) {
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

    final res = await _deleteProductInCartUsecase.call(event.id);

    res.fold(
      (l) {
        _updateView();
        // log.e(l.toString());
      },
      (r) {
        _updateView();
        // popularBloc.add(const PopularEvent.fetch());
        // latestBloc.add(const LatestEvent.fetch());
        // hits.add(const HitEvent.fetch());
        // discount.add(const DiscountsEvent.fetch());
      },
    );
  }

  void _onUpdateProductInCart(
      _UpdateProductInCart event, Emitter<CartState> emit) async {
    final cState = state as _Ready;
    if (!cState.products.any((element) => element.product!.id == event.id)) {
      return;
    }
    final res = await _updateProductInCartUseCase
        .call((productId: event.id, quantity: event.quantity));

    res.fold((l) => _updateView(), (r) {
      add(const CartEvent.getCartPrice());
    });
  }

  void _onGetCartPrice(_GetCartPrice event, Emitter<CartState> emit) async {


    final res = await _getCartPriceUseCase.call(NoParams());

    res.fold((l) {
      // emit(const CartState.error());
      // log.e(l.toString());
    }, (r) {
      emit((state as _Ready).copyWith(price: r));
    });
  }

  void _onGetCartProducts(
      _GetCartProducts event, Emitter<CartState> emit) async {

    if (state is _Ready && event.isMore) {
      emit((state as _Ready).copyWith(isMoreLoading: true));
    }


    if (!event.isMore) pageNumber = 1;

    final res = await _getCartProductsUseCase.call(pageNumber);
    final prices = await _getCartPriceUseCase.call(NoParams());

    res.fold((l) {
      pageNumber = 1;
      // log.e(l.toString());
      // emit(const CartState.error());
    }, (r) async {
      // emit(const CartState.loadInProgress());
      pageNumber++;
      hasNext = r.hasNext;

      if (!event.isMore) quantityControllers.clear();
      List.generate(
          r.products.length,
          (index) => quantityControllers.add(TextEditingController(
              text: r.products[index].quantity.toString())));
      if (state is _Ready && event.isMore) {
        List<CartProduct> cartProducts = [];
        cartProducts.addAll((state as _Ready).products);
        cartProducts.addAll(r.products);
        if (kIsWeb) {
          emit((state as _Ready).copyWith(products: []));
          await Future.delayed(const Duration(milliseconds: 100));
        }
        emit((state as _Ready)
            .copyWith(products: cartProducts, isMoreLoading: false));
        return;
      }

      emit(CartState.ready(products: r.products, price: 0));
    });

    prices.fold((l) {
      // emit(const CartState.error());
      // log.e(l.toString());
    }, (r) {
      emit((state as _Ready).copyWith(price: r));
    });
  }

  void _updateView() {
    add(const CartEvent.getCartPrice());
    add(const CartEvent.getCartProducts());
  }

  void _onRetry(_Retry event, Emitter<CartState> emit) {

    emit(const CartState.loadInProgress());
    _updateView();
  }

  void _onToCheckout(_ToCheckout event, Emitter<CartState> emit) {
    router.push(CheckoutRoute());
  }
}
