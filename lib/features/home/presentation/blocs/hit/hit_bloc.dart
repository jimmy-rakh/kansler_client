import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../domain/usecases/fetch_hit_products.usecase.dart';


part 'hit_state.dart';
part 'hit_event.dart';
part 'hit_bloc.freezed.dart';

@injectable
class HitBloc extends Bloc<HitEvent, HitState> {
  final FetchHitProductUseCase _useCase;

  HitBloc(this._useCase) : super(const HitState.loadInProgress()) {
    on<_Fetch>(_onFetch);
    on<_AddToCart>(_onAddToCart);
    on<_Position>(_position);
    on<_PositionNext>(_positionHitNext);

    add(const HitEvent.fetch());
  }
  final ScrollController controllerProducts = ScrollController();

  void _onFetch(_Fetch event, Emitter<HitState> emit) async {
    emit(const HitState.loadInProgress());
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(HitState.success(r.products)));
  }

  void _onAddToCart(_AddToCart event, Emitter<HitState> emit) {
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

    emit(HitState.success(products));
  }

  void _position(_Position event, Emitter<HitState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels - (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _positionHitNext(_PositionNext event, Emitter<HitState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels + (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
