part of 'latest_bloc.dart';

@freezed
class LatestState with _$LatestState {
  const factory LatestState.loadInProgress() = _LoadInProgress;
  const factory LatestState.success({
    @Default([]) List<ProductEntity> products,
    @Default(false) bool cardType,
  }) = _Success;
  const factory LatestState.failure() = _Failure;
}
