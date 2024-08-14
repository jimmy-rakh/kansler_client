part of 'brands_bloc.dart';

@freezed
class BrandsState with _$BrandsState {
  const factory BrandsState.initial() = _Initial;
  const factory BrandsState.success(List<ProductDataEntity> brands) = _Success;
}
