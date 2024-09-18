part of 'addresses_bloc.dart';

@freezed
class AddressesState with _$AddressesState {
  const factory AddressesState.loadInProgress() = _LoadInProgress;
  const factory AddressesState.ready(AddressDto entities) = _Ready;
  const factory AddressesState.notFound() = _NotFound;
}
