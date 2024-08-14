part of 'discounts_bloc.dart';

@freezed
class DiscountsState with _$DiscountsState {
  const factory DiscountsState.loadInProgress() = _LoadInProgress;
  const factory DiscountsState.success(List<ProductEntity> products) = _Success;
    const factory DiscountsState.failure() = _Failure;

}
