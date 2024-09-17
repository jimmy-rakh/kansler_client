// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AddressesScreen]
class AddressesRoute extends PageRouteInfo<AddressesRouteArgs> {
  AddressesRoute({
    Key? key,
    required int companyId,
    List<PageRouteInfo>? children,
  }) : super(
          AddressesRoute.name,
          args: AddressesRouteArgs(
            key: key,
            companyId: companyId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddressesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddressesRouteArgs>();
      return WrappedRoute(
          child: AddressesScreen(
        key: args.key,
        companyId: args.companyId,
      ));
    },
  );
}

class AddressesRouteArgs {
  const AddressesRouteArgs({
    this.key,
    required this.companyId,
  });

  final Key? key;

  final int companyId;

  @override
  String toString() {
    return 'AddressesRouteArgs{key: $key, companyId: $companyId}';
  }
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthScreen();
    },
  );
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartScreen();
    },
  );
}

/// generated route for
/// [CategoriesScreen]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoriesScreen();
    },
  );
}

/// generated route for
/// [CategoriesWrapperScreen]
class CategoriesWrapperRoute extends PageRouteInfo<void> {
  const CategoriesWrapperRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoriesWrapperScreen();
    },
  );
}

/// generated route for
/// [CheckoutScreen]
class CheckoutRoute extends PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    Key? key,
    CheckoutType type = CheckoutType.order,
    List<PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return WrappedRoute(
          child: CheckoutScreen(
        key: args.key,
        type: args.type,
      ));
    },
  );
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    this.key,
    this.type = CheckoutType.order,
  });

  final Key? key;

  final CheckoutType type;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [CompaniesScreen]
class CompaniesRoute extends PageRouteInfo<void> {
  const CompaniesRoute({List<PageRouteInfo>? children})
      : super(
          CompaniesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompaniesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CompaniesScreen();
    },
  );
}

/// generated route for
/// [DebtScreen]
class DebtRoute extends PageRouteInfo<DebtRouteArgs> {
  DebtRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          DebtRoute.name,
          args: DebtRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DebtRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DebtRouteArgs>();
      return WrappedRoute(
          child: DebtScreen(
        key: args.key,
        id: args.id,
      ));
    },
  );
}

class DebtRouteArgs {
  const DebtRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'DebtRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [FilterScreen]
class FilterRoute extends PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    Key? key,
    required SearchEntity searchData,
    CategoryEntitity? category,
    List<PageRouteInfo>? children,
  }) : super(
          FilterRoute.name,
          args: FilterRouteArgs(
            key: key,
            searchData: searchData,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return WrappedRoute(
          child: FilterScreen(
        key: args.key,
        searchData: args.searchData,
        category: args.category,
      ));
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({
    this.key,
    required this.searchData,
    this.category,
  });

  final Key? key;

  final SearchEntity searchData;

  final CategoryEntitity? category;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key, searchData: $searchData, category: $category}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LimitsScreen]
class LimitsRoute extends PageRouteInfo<LimitsRouteArgs> {
  LimitsRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          LimitsRoute.name,
          args: LimitsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'LimitsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LimitsRouteArgs>();
      return WrappedRoute(
          child: LimitsScreen(
        key: args.key,
        id: args.id,
      ));
    },
  );
}

class LimitsRouteArgs {
  const LimitsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'LimitsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginScreen());
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapScreen();
    },
  );
}

/// generated route for
/// [OrderDetailsScreen]
class OrderDetailsRoute extends PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    Key? key,
    int? id,
    CheckoutType type = CheckoutType.order,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            id: id,
            type: type,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<OrderDetailsRouteArgs>(
          orElse: () => OrderDetailsRouteArgs(id: pathParams.optInt('id')));
      return WrappedRoute(
          child: OrderDetailsScreen(
        key: args.key,
        id: args.id,
        type: args.type,
      ));
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    this.id,
    this.type = CheckoutType.order,
  });

  final Key? key;

  final int? id;

  final CheckoutType type;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, id: $id, type: $type}';
  }
}

/// generated route for
/// [OrderOrganizationScreen]
class OrderOrganizationRoute extends PageRouteInfo<OrderOrganizationRouteArgs> {
  OrderOrganizationRoute({
    Key? key,
    required int id,
    required OrganizationDto organization,
    CheckoutType type = CheckoutType.order,
    List<PageRouteInfo>? children,
  }) : super(
          OrderOrganizationRoute.name,
          args: OrderOrganizationRouteArgs(
            key: key,
            id: id,
            organization: organization,
            type: type,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'OrderOrganizationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderOrganizationRouteArgs>();
      return WrappedRoute(
          child: OrderOrganizationScreen(
        key: args.key,
        id: args.id,
        organization: args.organization,
        type: args.type,
      ));
    },
  );
}

class OrderOrganizationRouteArgs {
  const OrderOrganizationRouteArgs({
    this.key,
    required this.id,
    required this.organization,
    this.type = CheckoutType.order,
  });

  final Key? key;

  final int id;

  final OrganizationDto organization;

  final CheckoutType type;

  @override
  String toString() {
    return 'OrderOrganizationRouteArgs{key: $key, id: $id, organization: $organization, type: $type}';
  }
}

/// generated route for
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const OrdersScreen());
    },
  );
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int id,
    required ProductEntity product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            id: id,
            product: product,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return WrappedRoute(
          child: ProductScreen(
        key: args.key,
        id: args.id,
        product: args.product,
      ));
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.id,
    required this.product,
  });

  final Key? key;

  final int id;

  final ProductEntity product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, id: $id, product: $product}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    required String requestId,
    required String phone,
    String? inn,
    AddressRequest? address,
    int? addressId,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
            requestId: requestId,
            phone: phone,
            inn: inn,
            address: address,
            addressId: addressId,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterRouteArgs>();
      return WrappedRoute(
          child: RegisterScreen(
        key: args.key,
        requestId: args.requestId,
        phone: args.phone,
        inn: args.inn,
        address: args.address,
        addressId: args.addressId,
      ));
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    required this.requestId,
    required this.phone,
    this.inn,
    this.address,
    this.addressId,
  });

  final Key? key;

  final String requestId;

  final String phone;

  final String? inn;

  final AddressRequest? address;

  final int? addressId;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, requestId: $requestId, phone: $phone, inn: $inn, address: $address, addressId: $addressId}';
  }
}

/// generated route for
/// [ScannerScreen]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
      : super(
          ScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ScannerScreen();
    },
  );
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    String title = '',
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return WrappedRoute(
          child: SearchScreen(
        key: args.key,
        title: args.title,
      ));
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.title = '',
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SplashScreen());
    },
  );
}

/// generated route for
/// [SubcategoryScreen]
class SubcategoryRoute extends PageRouteInfo<SubcategoryRouteArgs> {
  SubcategoryRoute({
    Key? key,
    required CategoryEntitity category,
    List<PageRouteInfo>? children,
  }) : super(
          SubcategoryRoute.name,
          args: SubcategoryRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'SubcategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubcategoryRouteArgs>();
      return SubcategoryScreen(
        key: args.key,
        category: args.category,
      );
    },
  );
}

class SubcategoryRouteArgs {
  const SubcategoryRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final CategoryEntitity category;

  @override
  String toString() {
    return 'SubcategoryRouteArgs{key: $key, category: $category}';
  }
}
