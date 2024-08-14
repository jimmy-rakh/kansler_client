part of 'hit_bloc.dart';

@freezed
class HitState with _$HitState {
  const factory HitState.loadInProgress() = _LoadInProgress;
  const factory HitState.success(List<ProductEntity> products) = _Success;
  const factory HitState.failure() = _Failure;
}
