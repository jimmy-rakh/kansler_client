part of 'order_organization_bloc.dart';

@freezed
class OrderOrganizationEvent with _$OrderOrganizationEvent {
  const factory OrderOrganizationEvent.fetch(int id) = _FetchData;
}
