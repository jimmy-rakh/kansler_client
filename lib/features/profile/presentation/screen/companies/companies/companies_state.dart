part of 'companies_bloc.dart';

@freezed
class CompaniesState with _$CompaniesState {
  const factory CompaniesState.loadInProgress() = _LoadInProgress;
  const factory CompaniesState.ready(List<CompanyEntity> entities) = _Ready;
}
