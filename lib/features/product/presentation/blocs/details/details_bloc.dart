import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import '../../../../../app/router.dart';
import '../../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import '../../../domain/entities/product.entity.dart';
import '../../../domain/usecases/fetch.product.usecase.dart';

part 'details_state.dart';

part 'details_event.dart';

part 'details_bloc.freezed.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final FetchProductUseCase _fetchProductUseCase;

  DetailsBloc(this._fetchProductUseCase) : super(const DetailsState()) {
    on<_SetData>(_onSetData);
    on<_FetchProduct>(_onFetchProduct);
    on<_AddToCart>(_onAddToCart);
    on<_UpdateView>(_onUpdateView);
    on<_AddToPreorder>(_onAddToPreorder);
  }

  TextEditingController fieldController = TextEditingController(text: '1');
  late int productPrice;

  void _onSetData(_SetData event, Emitter<DetailsState> emit) {
    add(DetailsEvent.fetchProduct(event.id));
  }

  Future<void> _onFetchProduct(
      _FetchProduct event, Emitter<DetailsState> emit) async {
    final res = await _fetchProductUseCase.call(event.id);

    res.fold((l) => emit(state.copyWith(status: DetailsStatus.error)), (r) {
      productPrice = r.price!;
      emit(state.copyWith(status: DetailsStatus.loaded, product: r));
    });
    fieldController.addListener(() => add(const DetailsEvent.updateView()));
  }

  void increment() {
    final product = state.product;

    if (product == null) return;

    if (product.contractor?.leftQuantity != 0) {
      if (product.contractor!.leftQuantity <= int.parse(fieldController.text)) {
        router.navigatorKey.currentContext!
            .showToast('Недостаточно кол-во в складе');
        return;
      }
      fieldController.text = (int.parse(fieldController.text) + 1).toString();
    } else {
      if (product.leftQuantity <= int.parse(fieldController.text)) {
        router.navigatorKey.currentContext!
            .showToast('Недостаточно кол-во в складе');
        return;
      }
      fieldController.text = (int.parse(fieldController.text) + 1).toString();
    }
  }

  void decrement() {
    if (int.parse(fieldController.text) == 1) return;

    fieldController.text = (int.parse(fieldController.text) - 1).toString();
  }

  void completeEditing() {
    if ((int.tryParse(fieldController.text) ?? 0) >= 1) return;

    fieldController.text = '1';
  }

  void _onAddToCart(_AddToCart event, Emitter<DetailsState> emit) async {
    if (state.product == null) return;
    final cartBloc =
        BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!);

    final product = state.product;



    if (!product!.inCart!) {
      if (product.contractor?.leftQuantity != 0) {
        if (product.contractor!.leftQuantity < int.parse(fieldController.text)) {
          router.navigatorKey.currentContext!
              .showToast('Недостаточно кол-во в складе');
          return;
        }
        cartBloc.add(CartEvent.addToCart(
            product.id, int.parse(fieldController.text),
            updateDependencies: true));
      } else {
        if (product.leftQuantity < int.parse(fieldController.text)) {
          router.navigatorKey.currentContext!
              .showToast('Недостаточно кол-во в складе');
          return;
        }
        cartBloc.add(CartEvent.addToCart(
            product.id, int.parse(fieldController.text),
            updateDependencies: true));
      }
    } else {
      cartBloc.add(CartEvent.deleteProductInCart(product.id));
    }

    emit(state.copyWith(product: product.copyWith(inCart: !product.inCart!)));
  }

  void _onUpdateView(_UpdateView event, Emitter<DetailsState> emit) {
    emit(state.copyWith(
        product: state.product?.copyWith(
            price: productPrice * (int.tryParse(fieldController.text) ?? 0))));
  }

  void _onAddToPreorder(_AddToPreorder event, Emitter<DetailsState> emit) {
    if (state.product == null) return;
    final preordersBloc =
        BlocProvider.of<PreordersBloc>(router.navigatorKey.currentContext!);

    final product = state.product!;

    !product.inPreorder!
        ? preordersBloc.add(PreordersEvent.addToPreorders(
            product.id, int.parse(fieldController.text),
            updateDependencies: true))
        : preordersBloc
            .add(PreordersEvent.deleteProductInPreorders(product.id));

    emit(state.copyWith(
        product: product.copyWith(inPreorder: !product.inPreorder!)));
  }
}
