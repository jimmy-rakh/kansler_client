part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getCompany() = _GetCompany;
  const factory ProfileEvent.setInit() = _SetInit;
}
