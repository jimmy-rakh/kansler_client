import '../../../../core/network/constants.dart';

class ProductRemoteKeys {
  static const posters = '${NetworkConstants.apiUrl}/posters';
  static const productsApi = '${NetworkConstants.apiUrl}/products';
  static const productsHit = '$productsApi/hit';
  static const productsLatest = '$productsApi/latest';
  static const productsPopular = '$productsApi/popular';
  static const productsDiscount = '$productsApi/discount';
  static const sessionKey = '${NetworkConstants.apiUrl}/session_key';
}
