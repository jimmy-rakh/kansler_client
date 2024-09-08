part of 'preorders_bloc.dart';

enum PreordersStatus { loading, loaded, error }

@freezed
class PreordersState with _$PreordersState {
  const factory PreordersState({
    @Default(PreordersStatus.loading) PreordersStatus status,
    @Default([]) List<CartProduct> products,
    int? price,
    @Default(false) bool isMoreLoading,
  }) = _LoginState;
}
