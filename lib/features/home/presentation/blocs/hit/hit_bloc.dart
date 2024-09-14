import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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


    add(const HitEvent.fetch());
  }

  void _onFetch(_Fetch event, Emitter<HitState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(HitState.success(r.products)));
  }

  void _onAddToCart(_AddToCart event, Emitter<HitState> emit) {
    final curr = state as _Success;

    List<ProductEntity> products = curr.products.map((e) {
      if (e.id == event.id) {
        return e.copyWith(inCart: !e.inCart!);
      }
      return e;
    }).toList();

    emit(HitState.success(products));
  }
}
