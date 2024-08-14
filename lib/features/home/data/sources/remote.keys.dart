import '../../../../core/network/constants.dart';

class ProductRemoteKeys {
  static const productsApi = '${NetworkConstants.apiUrl}/products';
  static const productsHit = '$productsApi/hit';
  static const productsLatest = '$productsApi/latest';
  static const productsPopular = '$productsApi/popular';
  static const productsDiscount = '$productsApi/discount';
}
