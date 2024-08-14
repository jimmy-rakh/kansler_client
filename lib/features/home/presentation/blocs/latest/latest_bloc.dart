import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
    add(const LatestEvent.fetch());
  }

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
}
