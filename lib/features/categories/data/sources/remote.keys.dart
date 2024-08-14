import '../../../../core/network/constants.dart';

class CategoriesRemoteKeys {
  static const categories = '${NetworkConstants.apiUrl}/categories';
  static const categoriesChildren = '$categories/id/children';
  static const categoriesProducts = '$categories/id/products';
}
