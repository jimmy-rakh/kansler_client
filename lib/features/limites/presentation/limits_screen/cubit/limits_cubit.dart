import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/bonus_dto.dart';
import '../../../data/models/limit_dto.dart';
import '../../../domain/repositories/limits.repository.dart';

part 'limits_state.dart';
part 'limits_cubit.freezed.dart';

@injectable
class LimitsCubit extends Cubit<LimitsState> {
  final LimitsRepository _repository;

  LimitsCubit(this._repository) : super(const LimitsState());

  void init(int id) async {
    final bonuses = await _repository.fetchBonuses(id, 1);
    final limits = await _repository.fetchLimits(id, 1);

    bonuses.fold(
      (l) => null,
      (r) => emit(
        state.copyWith(bonuses: r.bonuses),
      ),
    );

    limits.fold(
      (l) => null,
      (r) => emit(
        state.copyWith(limits: r.limits),
      ),
    );
  }
}
