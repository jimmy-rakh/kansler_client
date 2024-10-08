part of 'details_bloc.dart';

enum DetailsStatus { loading, loaded, error }

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    @Default(DetailsStatus.loading) DetailsStatus status,
    ProductEntity? product,
  }) = _DetailsState;
}
