import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../domain/usecases/fetch_latest_products.usecase.dart';

part 'latest_state.dart';

part 'latest_event.dart';

part 'latest_bloc.freezed.dart';

@injectable
class LatestBloc extends Bloc<LatestEvent, LatestState> {
  final FetchLatestProductUseCase _useCase;

  LatestBloc(this._useCase) : super(const LatestState.loadInProgress()) {
    on<_Fetch>(_onFetch);
    on<_ChangeCartState>(_onChangeCartState);
    on<_CardType>(_onCardType);
    on<_AddToCart>(_onAddToCart);
    on<_Position>(_position);
    on<_PositionNext>(_positionHitNext);
    add(const LatestEvent.fetch());
  }
  final ScrollController controllerProducts = ScrollController();
  List<TextEditingController> quantityControllers = [];

  void _onCardType(_CardType event, Emitter<LatestState> emit) async {
    emit((state as _Success).copyWith(cardType: !(state as _Success).cardType));
  }

  void _onFetch(_Fetch event, Emitter<LatestState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));
    res.fold(log.e, (r) {
      quantityControllers.addAll(List.generate(
          r.products.length, (index) => TextEditingController(text: '1')));

      if (state is _Success) {
        emit((state as _Success).copyWith(products: r.products));
        return;
      }
      emit(LatestState.success(products: r.products));
    });
  }

  void _onChangeCartState(_ChangeCartState event, Emitter<LatestState> emit) {
    final currentState = state as _Success;

    final products = currentState.products.map((e) {
      if (e.id == event.product.id) {
        return event.product.copyWith(inCart: !event.product.inCart!);
      }
      return e;
    }).toList();

    emit(currentState.copyWith(products: products));
  }

  void _onAddToCart(_AddToCart event, Emitter<LatestState> emit) {
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

    emit(LatestState.success(products: products));
  }

  void _position(_Position event, Emitter<LatestState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels - (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _positionHitNext(_PositionNext event, Emitter<LatestState> emit) async {
    controllerProducts.animateTo(
      controllerProducts.position.pixels + (event.position - 80),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
