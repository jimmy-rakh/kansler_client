part of 'addresses_bloc.dart';

@freezed
class AddressesEvent with _$AddressesEvent {
  const factory AddressesEvent.fetch(int companyId) = _Fetch;
}
