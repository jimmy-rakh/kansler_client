import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';

import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../domain/usecases/fetch_discount_products.usecase.dart';

part 'discounts_state.dart';
part 'discounts_event.dart';
part 'discounts_bloc.freezed.dart';

@injectable
class DiscountsBloc extends Bloc<DiscountsEvent, DiscountsState> {
  final FetchDiscountProductUseCase _useCase;
  DiscountsBloc(this._useCase) : super(const DiscountsState.loadInProgress()) {
    on<_Fetch>(_onFetch);
    on<_AddToCart>(_onAddToCart);
    on<_Position>(_position);
    on<_PositionNext>(_positionHitNext);
    add(const DiscountsEvent.fetch());
  }
  final ScrollController controllerProducts = ScrollController();
  void _onFetch(_Fetch event, Emitter<DiscountsState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(DiscountsState.success(r.products)));
  }

  void _onAddToCart(_AddToCart event, Emitter<DiscountsState> emit) {
    final curr = state as _Success;

    List<ProductEntity> products = curr.products.map((e) {
      if (e.id == event.id) {
        switch (event.type) {
          case CheckoutType.order:
            return e.copyWith(inCart: !e.inCart!);

          case CheckoutType.preorder:
            return e.copyWith(inPreorder: !e.inPreorder!);
        }
      }
      return e;
    }).toList();

    emit(DiscountsState.success(products));
  }

  void _position(_Position event, Emitter<DiscountsState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels - (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _positionHitNext(_PositionNext event, Emitter<DiscountsState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels + (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
