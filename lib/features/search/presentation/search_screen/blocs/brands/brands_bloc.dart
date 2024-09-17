import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../../product/domain/entities/product_data.entity.dart';
import '../../../../domain/usecases/brands.usecase.dart';

part 'brands_state.dart';
part 'brands_event.dart';
part 'brands_bloc.freezed.dart';

@lazySingleton
class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  final BrandsUseCase _brandsUseCase;

  BrandsBloc(this._brandsUseCase) : super(const BrandsState.initial()) {
    on<_Fetch>(_onFetch);
  }

  void _onFetch(_Fetch event, Emitter<BrandsState> emit) async {
    final res =
        await _brandsUseCase.call(BrandsParams(1, event.organizationId));

    res.fold((l) => log.e(l), (r) => emit(BrandsState.success(r.products)));
  }
}
