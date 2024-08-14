import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    on<_ChangeCartState>(_onChangeCartState);

    add(const PopularEvent.fetch());
  }

  void _onFetch(_Fetch event, Emitter<PopularState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(PopularState.success(r.products)));
  }

  void _onChangeCartState(_ChangeCartState event, Emitter<PopularState> emit) {
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
