part of 'banner_bloc.dart';

@freezed
class BannerEvent with _$BannerEvent {
  const factory BannerEvent.fetch() = _Fetch;
  const factory BannerEvent.fetchById(int? id) = _FetchById;
  const factory BannerEvent.fetchBannerProducts(int? id) = _FetchBannerProducts;
  const factory BannerEvent.onChange(int? index) = _OnChange;
  const factory BannerEvent.onNext(int? index) = _OnNext;
  const factory BannerEvent.onPrevious(int? index) = _OnPrevious;
}
