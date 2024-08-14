import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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

    add(const DiscountsEvent.fetch());
  }

  void _onFetch(_Fetch event, Emitter<DiscountsState> emit) async {
    final res = await _useCase.call((pageNumber: 1, pageSize: 30));

    res.fold(log.e, (r) => emit(DiscountsState.success(r.products)));
  }
}
