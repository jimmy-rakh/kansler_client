

import '../../../../core/network/constants.dart';

class CartRemoteKeys {
  static const cartApi = '${NetworkConstants.apiUrl}/cart';
  static const cartProducts = '$cartApi/cart-products';
  static const preOrder = '${NetworkConstants.apiUrl}/pre-order';
  static const preOrderCart = '$preOrder/cart';
  static const preOrderProducts = '$preOrderCart/cart-products';
}
