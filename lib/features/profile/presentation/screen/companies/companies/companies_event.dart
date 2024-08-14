part of 'companies_bloc.dart';

@freezed
class CompaniesEvent with _$CompaniesEvent {
  const factory CompaniesEvent.fetchCompanies() = _FetchCompanies;
}
