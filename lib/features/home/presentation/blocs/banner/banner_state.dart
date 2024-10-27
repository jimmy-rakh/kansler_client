part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.loadInProgress() = _LoadInProgress;
  const factory BannerState.success( {@Default(0) int? index,List<PostersDto>? posters,PostersDto? poster,List<ProductEntity>? products}) = _Success;
  const factory BannerState.failure() = _Failure;
}
