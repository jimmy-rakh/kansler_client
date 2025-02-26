// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddressesRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AddressesRouteArgs>(
          orElse: () => AddressesRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: AddressesScreen(
          key: args.key,
          id: args.id,
        )),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    BannerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BannerRouteArgs>(
          orElse: () => BannerRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BannerScreen(
          key: args.key,
          id: args.id,
          poster: args.poster,
        ),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesScreen(),
      );
    },
    CategoriesWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesWrapperScreen(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CheckoutScreen(
          key: args.key,
          type: args.type,
        )),
      );
    },
    CompaniesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompaniesScreen(),
      );
    },
    DebtRoute.name: (routeData) {
      final args = routeData.argsAs<DebtRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: DebtScreen(
          key: args.key,
          id: args.id,
        )),
      );
    },
    FilterRoute.name: (routeData) {
      final args = routeData.argsAs<FilterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: FilterScreen(
          key: args.key,
          searchData: args.searchData,
          category: args.category,
        )),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    HomeWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeWrapperScreen(),
      );
    },
    LimitsRoute.name: (routeData) {
      final args = routeData.argsAs<LimitsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: LimitsScreen(
          key: args.key,
          id: args.id,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LoginScreen()),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OrderDetailsRouteArgs>(
          orElse: () => OrderDetailsRouteArgs(id: pathParams.optInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: OrderDetailsScreen(
          key: args.key,
          id: args.id,
          type: args.type,
        )),
      );
    },
    OrderOrganizationRoute.name: (routeData) {
      final args = routeData.argsAs<OrderOrganizationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: OrderOrganizationScreen(
          key: args.key,
          id: args.id,
          organization: args.organization,
          type: args.type,
        )),
      );
    },
    OrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const OrdersScreen()),
      );
    },
    ProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => ProductRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ProductScreen(
          key: args.key,
          id: args.id,
          product: args.product,
        )),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: RegisterScreen(
          key: args.key,
          requestId: args.requestId,
          phone: args.phone,
          inn: args.inn,
          address: args.address,
          addressId: args.addressId,
        )),
      );
    },
    ScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScannerScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: SearchScreen(
          key: args.key,
          title: args.title,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SettingsWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsWrapperScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SplashScreen()),
      );
    },
    SubcategoryRoute.name: (routeData) {
      final args = routeData.argsAs<SubcategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubcategoryScreen(
          key: args.key,
          category: args.category,
        ),
      );
    },
    VacancyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VacancyScreen(),
      );
    },
  };
}

/// generated route for
/// [AddressesScreen]
class AddressesRoute extends PageRouteInfo<AddressesRouteArgs> {
  AddressesRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          AddressesRoute.name,
          args: AddressesRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'AddressesRoute';

  static const PageInfo<AddressesRouteArgs> page =
      PageInfo<AddressesRouteArgs>(name);
}

class AddressesRouteArgs {
  const AddressesRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'AddressesRouteArgs{key: $key, id: $id}';
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BannerScreen]
class BannerRoute extends PageRouteInfo<BannerRouteArgs> {
  BannerRoute({
    Key? key,
    required int id,
    PostersDto? poster,
    List<PageRouteInfo>? children,
  }) : super(
          BannerRoute.name,
          args: BannerRouteArgs(
            key: key,
            id: id,
            poster: poster,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'BannerRoute';

  static const PageInfo<BannerRouteArgs> page = PageInfo<BannerRouteArgs>(name);
}

class BannerRouteArgs {
  const BannerRouteArgs({
    this.key,
    required this.id,
    this.poster,
  });

  final Key? key;

  final int id;

  final PostersDto? poster;

  @override
  String toString() {
    return 'BannerRouteArgs{key: $key, id: $id, poster: $poster}';
  }
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<CheckoutRouteArgs> page =
      PageInfo<CheckoutRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<DebtRouteArgs> page = PageInfo<DebtRouteArgs>(name);
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

  static const PageInfo<FilterRouteArgs> page = PageInfo<FilterRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeWrapperScreen]
class HomeWrapperRoute extends PageRouteInfo<void> {
  const HomeWrapperRoute({List<PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<LimitsRouteArgs> page = PageInfo<LimitsRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<OrderDetailsRouteArgs> page =
      PageInfo<OrderDetailsRouteArgs>(name);
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

  static const PageInfo<OrderOrganizationRouteArgs> page =
      PageInfo<OrderOrganizationRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int id,
    ProductEntity? product,
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

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.id,
    this.product,
  });

  final Key? key;

  final int id;

  final ProductEntity? product;

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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsWrapperScreen]
class SettingsWrapperRoute extends PageRouteInfo<void> {
  const SettingsWrapperRoute({List<PageRouteInfo>? children})
      : super(
          SettingsWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<SubcategoryRouteArgs> page =
      PageInfo<SubcategoryRouteArgs>(name);
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

/// generated route for
/// [VacancyScreen]
class VacancyRoute extends PageRouteInfo<void> {
  const VacancyRoute({List<PageRouteInfo>? children})
      : super(
          VacancyRoute.name,
          initialChildren: children,
        );

  static const String name = 'VacancyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
