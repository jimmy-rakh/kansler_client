part of 'limits_cubit.dart';

enum LimitsStatus { loading, success }

@freezed
class LimitsState with _$LimitsState {
  const factory LimitsState({
    @Default(LimitsStatus.loading) LimitsStatus status,
    @Default([]) List<LimitsDto> limits,
    @Default([]) List<BonusDto> bonuses,
  }) = _LimitsState;
}
