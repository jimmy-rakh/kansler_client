part of 'prices_bloc.dart';

enum PricesStatus {
  loading,
  loaded,
  error,
}

@freezed
class PricesState with _$PricesState {
  const factory PricesState({
    @Default(PricesStatus.loaded) PricesStatus status,
    SearchEntity? filterData,
  }) = _PricesState;
}
