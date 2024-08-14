part of 'popular_bloc.dart';

@freezed
class PopularState with _$PopularState {
  const factory PopularState.loadInProgress() = _LoadInProgress;
  const factory PopularState.success(List<ProductEntity> products) = _Success;
  const factory PopularState.failure() = _Failure;
}
