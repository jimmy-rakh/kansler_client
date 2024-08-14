part of 'brands_bloc.dart';

@freezed
class BrandsEvent with _$BrandsEvent {
  const factory BrandsEvent.fetch(int? organizationId) = _Fetch;
}
