part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.loadInProgress() = _LoadInProgress;
  const factory BannerState.success() = _Success;
  const factory BannerState.failure() = _Failure;
}
