import '../../../../core/network/constants.dart';

class OrderRemoteKeys {
  static const orderApi = '${NetworkConstants.apiUrl}/orders';
  static const orderProducts =
      '${NetworkConstants.apiUrl}/organization-orders/id/products';

  static const preorderApi = '${NetworkConstants.apiUrl}/pre-order';
  static const preorderProducts =
      '${NetworkConstants.apiUrl}/organization-pre-orders/id/products';
}
