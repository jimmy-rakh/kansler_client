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

    add(const HitEvent.fetch());
  }

  void _onFetch(_Fetch event, Emitter<HitState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(HitState.success(r.products)));
  }
}
