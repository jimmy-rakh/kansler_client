part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.ready({
    @Default(0) int activePage,
    @Default([]) List<ProductDataEntity> organizations,
    required SearchEntity search,
  }) = _Ready;
}
