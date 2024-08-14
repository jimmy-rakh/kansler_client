part of 'order_organization_bloc.dart';

@freezed
class OrderOrganizationState with _$OrderOrganizationState {
  const factory OrderOrganizationState.loadInProgress() = _LoadInProgress;
  const factory OrderOrganizationState.ready(List<CartProduct> orders) = _Ready;
}
