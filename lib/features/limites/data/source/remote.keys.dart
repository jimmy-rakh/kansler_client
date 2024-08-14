import '../../../../core/network/constants.dart';

class LimitsRemoteKeys {
  static const companiesApi = '${NetworkConstants.apiUrl}/companies';
  static const limits = '$companiesApi/id/limit';
  static const bonus = '$companiesApi/id/bonus';
  static const contracts = '$companiesApi/id/contracts';
  static const debts = '$contracts/cnteId/debts';
  static const payment = '$contracts/cnteId/payment';
}
