import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';

import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../domain/usecases/fetch_popular_products.usecase.dart';

part 'popular_state.dart';
part 'popular_event.dart';
part 'popular_bloc.freezed.dart';

@injectable
class PopularBloc extends Bloc<PopularEvent, PopularState> {
  final FetchPopularProductUseCase _useCase;
  PopularBloc(this._useCase) : super(const PopularState.loadInProgress()) {
    on<_Fetch>(_onFetch);
    on<_AddToCart>(_onAddToCart);
    on<_Position>(_position);
    on<_PositionNext>(_positionHitNext);
    add(const PopularEvent.fetch());
  }
  final ScrollController controllerProducts = ScrollController();
  void _onFetch(_Fetch event, Emitter<PopularState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(PopularState.success(r.products)));
  }

  void _onAddToCart(_AddToCart event, Emitter<PopularState> emit) {
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

    emit(PopularState.success(products));
  }

  void _position(_Position event, Emitter<PopularState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels - (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _positionHitNext(_PositionNext event, Emitter<PopularState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels + (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
