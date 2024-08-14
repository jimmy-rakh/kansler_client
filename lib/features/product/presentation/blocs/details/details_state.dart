part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loadInProgress() = _LoadInProgress;
  const factory DetailsState.success(ProductEntity product) = _Success;
  const factory DetailsState.failure() = _Failure;
}
