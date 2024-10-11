// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kansler/app/router.dart' as _i284;
import 'package:kansler/core/network/dio_client.dart' as _i786;
import 'package:kansler/features/auth/auth.dart' as _i851;
import 'package:kansler/features/auth/data/repositories/auth.repository.dart'
    as _i673;
import 'package:kansler/features/auth/data/sources/local.dart' as _i766;
import 'package:kansler/features/auth/data/sources/local.impl.dart' as _i405;
import 'package:kansler/features/auth/data/sources/remote.dart' as _i1023;
import 'package:kansler/features/auth/data/sources/remote.impl.dart' as _i432;
import 'package:kansler/features/auth/domain/domain.dart' as _i1012;
import 'package:kansler/features/auth/domain/repositories/auth.repository.dart'
    as _i892;
import 'package:kansler/features/auth/domain/usecases/get_user_status.usecase.dart'
    as _i1070;
import 'package:kansler/features/auth/domain/usecases/set_auth_token.usecase.dart'
    as _i1018;
import 'package:kansler/features/auth/presentation/screens/auth/bloc/auth_bloc.dart'
    as _i188;
import 'package:kansler/features/auth/presentation/screens/login/bloc/login_bloc.dart'
    as _i574;
import 'package:kansler/features/auth/presentation/screens/register/bloc/register_bloc.dart'
    as _i1023;
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code/confirm_code_bloc.dart'
    as _i86;
import 'package:kansler/features/cart/data/repositories/cart.repository.dart'
    as _i507;
import 'package:kansler/features/cart/data/sources/remote.dart' as _i749;
import 'package:kansler/features/cart/data/sources/remote.impl.dart' as _i433;
import 'package:kansler/features/cart/domain/repositories/cart.repository.dart'
    as _i49;
import 'package:kansler/features/cart/domain/usecases/add_product_to_cart.usecase.dart'
    as _i859;
import 'package:kansler/features/cart/domain/usecases/delete_product_in_cart.usecase.dart'
    as _i735;
import 'package:kansler/features/cart/domain/usecases/delete_products_in_cart.usecase.dart'
    as _i753;
import 'package:kansler/features/cart/domain/usecases/get_cart_price.usecase.dart'
    as _i153;
import 'package:kansler/features/cart/domain/usecases/get_cart_products.usecase.dart'
    as _i1056;
import 'package:kansler/features/cart/domain/usecases/update_product_in_cart.usecase.dart'
    as _i327;
import 'package:kansler/features/cart/presentation/screen/cart_bloc/cart_bloc.dart'
    as _i33;
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart'
    as _i686;
import 'package:kansler/features/categories/data/repositories/categories.repository.dart'
    as _i461;
import 'package:kansler/features/categories/data/sources/remote.dart' as _i615;
import 'package:kansler/features/categories/data/sources/remote.impl.dart'
    as _i254;
import 'package:kansler/features/categories/domain/repositories/categories.repository.dart'
    as _i150;
import 'package:kansler/features/categories/domain/usecases/get_categories.usecase.dart'
    as _i914;
import 'package:kansler/features/categories/domain/usecases/get_category_children.usecase.dart'
    as _i756;
import 'package:kansler/features/categories/domain/usecases/get_category_products.usecase.dart'
    as _i92;
import 'package:kansler/features/categories/presentation/screens/category/bloc/categories_bloc.dart'
    as _i526;
import 'package:kansler/features/categories/presentation/screens/subcategory/bloc/subcategory_bloc.dart'
    as _i230;
import 'package:kansler/features/checkout/data/repositories/checkout.repository.dart'
    as _i285;
import 'package:kansler/features/checkout/data/sources/remote.dart' as _i910;
import 'package:kansler/features/checkout/data/sources/remote.impl.dart'
    as _i693;
import 'package:kansler/features/checkout/domain/repositories/checkout.repository.dart'
    as _i755;
import 'package:kansler/features/checkout/presentation/checkout_screen/bloc/checkout_bloc.dart'
    as _i407;
import 'package:kansler/features/home/data/repositories/product.repository.dart'
    as _i1064;
import 'package:kansler/features/home/data/sources/remote.dart' as _i310;
import 'package:kansler/features/home/data/sources/remote.impl.dart' as _i611;
import 'package:kansler/features/home/domain/repositories/products.repository.dart'
    as _i453;
import 'package:kansler/features/home/domain/usecases/fetch_discount_products.usecase.dart'
    as _i613;
import 'package:kansler/features/home/domain/usecases/fetch_hit_products.usecase.dart'
    as _i974;
import 'package:kansler/features/home/domain/usecases/fetch_latest_products.usecase.dart'
    as _i253;
import 'package:kansler/features/home/domain/usecases/fetch_popular_products.usecase.dart'
    as _i229;
import 'package:kansler/features/home/presentation/blocs/banner/banner_bloc.dart'
    as _i533;
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart'
    as _i1053;
import 'package:kansler/features/home/presentation/blocs/hit/hit_bloc.dart'
    as _i126;
import 'package:kansler/features/home/presentation/blocs/last_viewed/last_viewed_bloc.dart'
    as _i1027;
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart'
    as _i869;
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart'
    as _i188;
import 'package:kansler/features/home/presentation/blocs/recs/recs_bloc.dart'
    as _i767;
import 'package:kansler/features/home/presentation/blocs/templates/templates_bloc.dart'
    as _i843;
import 'package:kansler/features/limites/data/repositories/limits.repository.dart'
    as _i29;
import 'package:kansler/features/limites/data/source/remote.dart' as _i770;
import 'package:kansler/features/limites/data/source/remote.impl.dart' as _i882;
import 'package:kansler/features/limites/domain/repositories/limits.repository.dart'
    as _i945;
import 'package:kansler/features/limites/presentation/debt/cubit/debt_cubit.dart'
    as _i0;
import 'package:kansler/features/limites/presentation/limits_screen/cubit/limits_cubit.dart'
    as _i881;
import 'package:kansler/features/main/presentation/bloc/navbar_bloc.dart'
    as _i923;
import 'package:kansler/features/orders/data/repositories/order.repository.dart'
    as _i812;
import 'package:kansler/features/orders/data/sourses/remote.dart' as _i757;
import 'package:kansler/features/orders/data/sourses/remote.impl.dart' as _i276;
import 'package:kansler/features/orders/domain/repositories/order.repository.dart'
    as _i423;
import 'package:kansler/features/orders/presentation/order_details/bloc/order_details_bloc.dart'
    as _i119;
import 'package:kansler/features/orders/presentation/order_organization/bloc/order_organization_bloc.dart'
    as _i574;
import 'package:kansler/features/orders/presentation/screen/bloc/orders_bloc.dart'
    as _i43;
import 'package:kansler/features/product/data/repositories/product.repository.dart'
    as _i804;
import 'package:kansler/features/product/data/sources/remote.dart' as _i180;
import 'package:kansler/features/product/data/sources/remote.impl.dart'
    as _i420;
import 'package:kansler/features/product/domain/repositories/product.repository.dart'
    as _i716;
import 'package:kansler/features/product/domain/usecases/fetch.product.usecase.dart'
    as _i166;
import 'package:kansler/features/product/presentation/blocs/details/details_bloc.dart'
    as _i585;
import 'package:kansler/features/profile/data/repositories/profile.repository.dart'
    as _i256;
import 'package:kansler/features/profile/data/sources/remote.dart' as _i248;
import 'package:kansler/features/profile/data/sources/remote.impl.dart'
    as _i369;
import 'package:kansler/features/profile/domain/repositories/profile.repository.dart'
    as _i147;
import 'package:kansler/features/profile/presentation/screen/addresses/addresses/addresses_bloc.dart'
    as _i428;
import 'package:kansler/features/profile/presentation/screen/companies/companies/companies_bloc.dart'
    as _i860;
import 'package:kansler/features/profile/presentation/screen/profile/profile_bloc.dart'
    as _i453;
import 'package:kansler/features/search/data/repositories/brands.repository.dart'
    as _i726;
import 'package:kansler/features/search/data/repositories/organizations.repository.dart'
    as _i55;
import 'package:kansler/features/search/data/repositories/search.repository.dart'
    as _i450;
import 'package:kansler/features/search/data/sorces/brands_remote.dart' as _i82;
import 'package:kansler/features/search/data/sorces/brands_remote.impl.dart'
    as _i889;
import 'package:kansler/features/search/data/sorces/organizations_remote.dart'
    as _i446;
import 'package:kansler/features/search/data/sorces/organizations_remote.impl.dart'
    as _i228;
import 'package:kansler/features/search/data/sorces/search_remote.dart' as _i71;
import 'package:kansler/features/search/data/sorces/search_remote.impl.dart'
    as _i658;
import 'package:kansler/features/search/domain/repositories/brands.repository.dart'
    as _i304;
import 'package:kansler/features/search/domain/repositories/organizations.repositories.dart'
    as _i38;
import 'package:kansler/features/search/domain/repositories/search.repository.dart'
    as _i848;
import 'package:kansler/features/search/domain/usecases/brands.usecase.dart'
    as _i323;
import 'package:kansler/features/search/domain/usecases/organizations.usecase.dart'
    as _i835;
import 'package:kansler/features/search/domain/usecases/search.usecase.dart'
    as _i1045;
import 'package:kansler/features/search/presentation/filter_screen/filter/filter_bloc.dart'
    as _i330;
import 'package:kansler/features/search/presentation/search_screen/blocs/brands/brands_bloc.dart'
    as _i373;
import 'package:kansler/features/search/presentation/search_screen/blocs/prices/prices_bloc.dart'
    as _i935;
import 'package:kansler/features/search/presentation/search_screen/blocs/search_bloc/search_bloc.dart'
    as _i685;
import 'package:kansler/features/settings/presentation/theme/theme_bloc.dart'
    as _i1033;
import 'package:kansler/features/splash/presentation/bloc/splash_bloc.dart'
    as _i357;
import 'package:kansler/shared/services/device/device_info_service.dart'
    as _i34;
import 'package:kansler/shared/services/device/device_info_service.impl.dart'
    as _i897;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i767.RecsBloc>(() => _i767.RecsBloc());
    gh.factory<_i1027.LastViewedBloc>(() => _i1027.LastViewedBloc());
    gh.factory<_i843.TemplatesBloc>(() => _i843.TemplatesBloc());
    gh.singleton<_i357.SplashBloc>(() => _i357.SplashBloc());
    gh.lazySingleton<_i284.AppRouter>(() => _i284.AppRouter());
    gh.lazySingleton<_i1033.ThemeBloc>(() => _i1033.ThemeBloc());
    gh.factory<_i34.DeviceInfoService>(() => _i897.DeviceInfoServiceImpl());
    gh.singleton<_i766.AuthLocalDataSource>(
        () => _i405.AuthLocalDataSourceImpl());
    gh.lazySingleton<_i786.DioClient>(
        () => _i786.DioClient(gh<_i851.AuthLocalDataSource>()));
    gh.lazySingleton<_i446.OrganizationsRemoteSource>(
        () => _i228.OrganizationsRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i757.OrdersRemoteSource>(
        () => _i276.OrdersSourceRemoteImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i749.CartRemoteSource>(
        () => _i433.CartRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i248.ProfileRemoteSource>(
        () => _i369.ProductRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i147.ProfileRepository>(
        () => _i256.ProfileRepositoryImpl(gh<_i248.ProfileRemoteSource>()));
    gh.lazySingleton<_i180.ProductRemoteDataSource>(
        () => _i420.ProductRemoteDataSourceImpl(gh<_i786.DioClient>()));
    gh.factory<_i310.ProductRemoteSource>(
        () => _i611.ProductRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i49.CartRepository>(
        () => _i507.CartRepositoryImpl(gh<_i749.CartRemoteSource>()));
    gh.lazySingleton<_i423.OrdersRepository>(
        () => _i812.OrderRepositoryImpl(gh<_i757.OrdersRemoteSource>()));
    gh.factory<_i770.LimitsRemoteSource>(
        () => _i882.LimitsRemoteImpl(gh<_i786.DioClient>()));
    gh.factory<_i453.ProductsRepository>(
        () => _i1064.ProductsRepositoryImpl(gh<_i310.ProductRemoteSource>()));
    gh.factory<_i428.AddressesBloc>(
        () => _i428.AddressesBloc(gh<_i147.ProfileRepository>()));
    gh.lazySingleton<_i860.CompaniesBloc>(
        () => _i860.CompaniesBloc(gh<_i147.ProfileRepository>()));
    gh.lazySingleton<_i453.ProfileBloc>(
        () => _i453.ProfileBloc(gh<_i147.ProfileRepository>()));
    gh.factory<_i735.DeleteProductInCartUsecase>(
        () => _i735.DeleteProductInCartUsecase(gh<_i49.CartRepository>()));
    gh.factory<_i327.UpdateProductInCartUseCase>(
        () => _i327.UpdateProductInCartUseCase(gh<_i49.CartRepository>()));
    gh.factory<_i753.DeleteProductsInCartUsecase>(
        () => _i753.DeleteProductsInCartUsecase(gh<_i49.CartRepository>()));
    gh.factory<_i859.AddProductToCartUseCase>(
        () => _i859.AddProductToCartUseCase(gh<_i49.CartRepository>()));
    gh.factory<_i1056.GetCartProductsUseCase>(
        () => _i1056.GetCartProductsUseCase(gh<_i49.CartRepository>()));
    gh.factory<_i153.GetCartPriceUseCase>(
        () => _i153.GetCartPriceUseCase(gh<_i49.CartRepository>()));
    gh.factory<_i33.CartBloc>(() => _i33.CartBloc(
          gh<_i859.AddProductToCartUseCase>(),
          gh<_i735.DeleteProductInCartUsecase>(),
          gh<_i327.UpdateProductInCartUseCase>(),
          gh<_i153.GetCartPriceUseCase>(),
          gh<_i1056.GetCartProductsUseCase>(),
        ));
    gh.lazySingleton<_i43.OrdersBloc>(
        () => _i43.OrdersBloc(gh<_i423.OrdersRepository>()));
    gh.factory<_i574.OrderOrganizationBloc>(
        () => _i574.OrderOrganizationBloc(gh<_i423.OrdersRepository>()));
    gh.factory<_i119.OrderDetailsBloc>(
        () => _i119.OrderDetailsBloc(gh<_i423.OrdersRepository>()));
    gh.lazySingleton<_i71.SearchRemoteSource>(
        () => _i658.SearchRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.factory<_i910.CheckoutRemoteSource>(
        () => _i693.CheckoutRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.factory<_i974.FetchHitProductUseCase>(
        () => _i974.FetchHitProductUseCase(gh<_i453.ProductsRepository>()));
    gh.factory<_i613.FetchDiscountProductUseCase>(() =>
        _i613.FetchDiscountProductUseCase(gh<_i453.ProductsRepository>()));
    gh.factory<_i253.FetchLatestProductUseCase>(
        () => _i253.FetchLatestProductUseCase(gh<_i453.ProductsRepository>()));
    gh.factory<_i229.FetchPopularProductUseCase>(
        () => _i229.FetchPopularProductUseCase(gh<_i453.ProductsRepository>()));
    gh.lazySingleton<_i82.BrendsRemoteSource>(
        () => _i889.BrandsRemoteSourceImpl(gh<_i786.DioClient>()));
    gh.factory<_i1023.AuthRemoteDataSource>(
        () => _i432.AuthRemoteDataSourceImpl(gh<_i786.DioClient>()));
    gh.lazySingleton<_i38.OrganizationsRepository>(() =>
        _i55.OrganizationsRepositoryImpl(
            gh<_i446.OrganizationsRemoteSource>()));
    gh.factory<_i615.CategoriesRemoteDataSource>(
        () => _i254.CategoriesRemoteDataSourceImpl(gh<_i786.DioClient>()));
    gh.factory<_i150.CategoriesRepository>(() =>
        _i461.CategoriesRepositoryImpl(gh<_i615.CategoriesRemoteDataSource>()));
    gh.lazySingleton<_i716.ProductRepository>(
        () => _i804.ProductRepositoryImpl(gh<_i180.ProductRemoteDataSource>()));
    gh.lazySingleton<_i848.SearchRepository>(
        () => _i450.SearchRepositoryImpl(gh<_i71.SearchRemoteSource>()));
    gh.lazySingleton<_i1045.SearchUseCase>(
        () => _i1045.SearchUseCase(gh<_i848.SearchRepository>()));
    gh.lazySingleton<_i935.PricesBloc>(
        () => _i935.PricesBloc(gh<_i848.SearchRepository>()));
    gh.factory<_i188.PopularBloc>(
        () => _i188.PopularBloc(gh<_i229.FetchPopularProductUseCase>()));
    gh.factory<_i755.CheckoutRepository>(
        () => _i285.CheckoutRepositoryImpl(gh<_i910.CheckoutRemoteSource>()));
    gh.lazySingleton<_i166.FetchProductUseCase>(
        () => _i166.FetchProductUseCase(gh<_i716.ProductRepository>()));
    gh.factory<_i686.PreordersBloc>(
        () => _i686.PreordersBloc(gh<_i49.CartRepository>()));
    gh.lazySingleton<_i304.BrandsRepository>(
        () => _i726.BrandsRepositoryImpl(gh<_i82.BrendsRemoteSource>()));
    gh.factory<_i1053.DiscountsBloc>(
        () => _i1053.DiscountsBloc(gh<_i613.FetchDiscountProductUseCase>()));
    gh.factory<_i585.DetailsBloc>(
        () => _i585.DetailsBloc(gh<_i166.FetchProductUseCase>()));
    gh.factory<_i869.LatestBloc>(
        () => _i869.LatestBloc(gh<_i253.FetchLatestProductUseCase>()));
    gh.factory<_i945.LimitsRepository>(
        () => _i29.LimitsRepositoryImpl(gh<_i770.LimitsRemoteSource>()));
    gh.factory<_i914.GetCategoriesUseCase>(
        () => _i914.GetCategoriesUseCase(gh<_i150.CategoriesRepository>()));
    gh.factory<_i92.GetCategoryProducts>(
        () => _i92.GetCategoryProducts(gh<_i150.CategoriesRepository>()));
    gh.factory<_i756.GetCategoryChildrenUseCase>(() =>
        _i756.GetCategoryChildrenUseCase(gh<_i150.CategoriesRepository>()));
    gh.lazySingleton<_i835.OrganizationsUseCase>(
        () => _i835.OrganizationsUseCase(gh<_i38.OrganizationsRepository>()));
    gh.factory<_i126.HitBloc>(
        () => _i126.HitBloc(gh<_i974.FetchHitProductUseCase>()));
    gh.factory<_i892.AuthRepository>(() => _i673.AuthRepositoryImpl(
          gh<_i1023.AuthRemoteDataSource>(),
          gh<_i766.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i526.CategoriesBloc>(() => _i526.CategoriesBloc(
          gh<_i914.GetCategoriesUseCase>(),
          gh<_i756.GetCategoryChildrenUseCase>(),
        ));
    gh.lazySingleton<_i323.BrandsUseCase>(
        () => _i323.BrandsUseCase(gh<_i304.BrandsRepository>()));
    gh.lazySingleton<_i373.BrandsBloc>(
        () => _i373.BrandsBloc(gh<_i323.BrandsUseCase>()));
    gh.factory<_i407.CheckoutBloc>(
        () => _i407.CheckoutBloc(gh<_i755.CheckoutRepository>()));
    gh.factory<_i1018.SetAuthTokenUseCase>(
        () => _i1018.SetAuthTokenUseCase(gh<_i892.AuthRepository>()));
    gh.factory<_i1018.SetSession>(
        () => _i1018.SetSession(gh<_i892.AuthRepository>()));
    gh.factory<_i1070.GetAuthStatusUseCase>(
        () => _i1070.GetAuthStatusUseCase(gh<_i892.AuthRepository>()));
    gh.factory<_i881.LimitsCubit>(
        () => _i881.LimitsCubit(gh<_i945.LimitsRepository>()));
    gh.factory<_i0.DebtCubit>(
        () => _i0.DebtCubit(gh<_i945.LimitsRepository>()));
    gh.factory<_i923.NavbarBloc>(() => _i923.NavbarBloc(
          gh<_i453.ProductsRepository>(),
          gh<_i1018.SetSession>(),
          gh<_i766.AuthLocalDataSource>(),
        ));
    gh.factory<_i330.FilterBloc>(
        () => _i330.FilterBloc(gh<_i835.OrganizationsUseCase>()));
    gh.factory<_i685.SearchBloc>(() => _i685.SearchBloc(
          gh<_i1045.SearchUseCase>(),
          gh<_i835.OrganizationsUseCase>(),
        ));
    gh.lazySingleton<_i230.SubcategoryBloc>(() => _i230.SubcategoryBloc(
          gh<_i756.GetCategoryChildrenUseCase>(),
          gh<_i92.GetCategoryProducts>(),
        ));
    gh.factory<_i533.BannerBloc>(() => _i533.BannerBloc(
          gh<_i453.ProductsRepository>(),
          gh<_i1018.SetSession>(),
          gh<_i766.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i188.AuthBloc>(() => _i188.AuthBloc(
          gh<_i1070.GetAuthStatusUseCase>(),
          gh<_i1012.AuthRepository>(),
        ));
    gh.factory<_i86.ConfirmCodeBloc>(
        () => _i86.ConfirmCodeBloc(gh<_i1012.AuthRepository>()));
    gh.factory<_i1023.RegisterBloc>(() => _i1023.RegisterBloc(
          gh<_i1012.AuthRepository>(),
          gh<_i1018.SetAuthTokenUseCase>(),
        ));
    gh.factory<_i574.LoginBloc>(() => _i574.LoginBloc(
          gh<_i1012.AuthRepository>(),
          gh<_i1018.SetAuthTokenUseCase>(),
        ));
    return this;
  }
}
