import '../../../../core/network/constants.dart';

class ProfileRemoteKeys {
  static const companiesApi = '${NetworkConstants.apiUrl}/companies';
  static const clientsApi = '${NetworkConstants.apiUrl}/';
  static const mainCompany = '$companiesApi/main';
  static const childCompanies = '$companiesApi/children';
  static const companyAddresses = '$companiesApi/{id}/addresses';
}
