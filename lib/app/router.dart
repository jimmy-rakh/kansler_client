import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/auth/data/models/register/address_request.dart';
import 'package:kansler/features/map/presentation/map_screen.dart';
import '../features/auth/auth.dart';
import '../features/cart/presentation/screen/cart_screen.dart';
import '../features/categories/domain/entities/category.entitity.dart';
import '../features/categories/presentation/screens/categories_wrapper.dart';
import '../features/categories/presentation/screens/category/categories_screen.dart';
import '../features/categories/presentation/screens/subcategory/subcategory_screen.dart';
import '../features/checkout/presentation/checkout_screen/checkout_screen.dart';
import '../features/home/data/models/posters_dto.dart';
import '../features/home/presentation/screen/banner_screen.dart';
import '../features/home/presentation/screen/home.dart';
import '../features/home/presentation/screen/home_screen.dart';
import '../features/limites/presentation/debt/debt_screen.dart';
import '../features/limites/presentation/limits_screen/limits_screen.dart';
import '../features/main/presentation/screen/main_screen.dart';
import '../features/orders/presentation/order_details/order_details_screen.dart';
import '../features/orders/presentation/order_organization/order_organization.dart';
import '../features/orders/presentation/screen/orders_screen.dart';
import '../features/product/domain/entities/product.entity.dart';
import '../features/product/presentation/screens/product_screen.dart';
import '../features/profile/data/models/address_dto.dart';
import '../features/profile/presentation/screen/addresses/addresses_screen.dart';
import '../features/profile/presentation/screen/companies/companies_screen.dart';
import '../features/profile/presentation/screen/profile_screen/profile_screen.dart';
import '../features/search/domain/entities/search.entity.dart';
import '../features/search/presentation/filter_screen/filter_screen.dart';
import '../features/search/presentation/scanner/scanner_screen.dart';
import '../features/search/presentation/search_screen/search_screen.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../features/settings/presentation/settings_wrapper.dart';
import '../features/splash/presentation/screen/splash_screen.dart';
import '../features/vacancy/vacancy_screen.dart';
import '../shared/utils/auth_guard.dart';
import 'di.dart';

part 'router.gr.dart';

final router = getIt<AppRouter>();

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(
          path:"/", page: MainRoute.page, initial: true,
          children: [
            AutoRoute(path:"main/",page: HomeWrapperRoute.page, children: [
              AutoRoute(path:"", page: HomeRoute.page, ),
              AutoRoute(path:"banner//:id/",page: BannerRoute.page),
            ]),
            AutoRoute(path:"categories/",page: CategoriesWrapperRoute.page, children: [
              AutoRoute(path:"",page: CategoriesRoute.page, ),
              AutoRoute(path:"subcategories/",page: SubcategoryRoute.page),
            ]),
            AutoRoute(path:"cart/",page: CartRoute.page,),
            AutoRoute(path:"orders/",page: OrdersRoute.page, guards: [AuthGuard()]),
            AutoRoute(path:"profile/",page: SettingsWrapperRoute.page, children: [
              AutoRoute(path:"",page: ProfileRoute.page, ),
              AutoRoute(path:"settings/",page: SettingsRoute.page),
              AutoRoute(path:"vacancy/",page: VacancyRoute.page),
            ]),
          ],
        ),
        AutoRoute(
          path:"/auth",
          page: AuthRoute.page,
          fullscreenDialog: true,
          children: [
            AutoRoute(path:"login/",page: LoginRoute.page, initial: true),
            AutoRoute(path:"register/",page: RegisterRoute.page)
          ],
        ),
        AutoRoute( path: '/product/:id/',page: ProductRoute.page),
        CustomRoute(
            path:"/search",
            page: SearchRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 100),
        AutoRoute(
          path:"/filter",
          page: FilterRoute.page,
          fullscreenDialog: true,
        ),
        AutoRoute(path:"/companies/",page: CompaniesRoute.page),
        AutoRoute(path:"/addresses/:id/",page: AddressesRoute.page),
        AutoRoute(path:"/checkout/",page: CheckoutRoute.page),
        AutoRoute(path: '/order/:id/',page: OrderDetailsRoute.page),
        AutoRoute( path: '/order/:id/products',page: OrderOrganizationRoute.page),
        AutoRoute(page: LimitsRoute.page),
        AutoRoute(page: DebtRoute.page),
        AutoRoute(page: ScannerRoute.page),
        AutoRoute(path:"/map/",page: MapRoute.page),
      ];

  Future<dynamic> showSheet(Widget child) async =>
      await navigatorKey.currentContext!.showBottomSheet(child);
}
