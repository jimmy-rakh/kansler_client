// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kansler/app/router.dart' as _i9;
import 'package:kansler/core/network/dio_client.dart' as _i14;
import 'package:kansler/features/auth/auth.dart' as _i15;
import 'package:kansler/features/auth/data/repositories/auth.repository.dart'
    as _i91;
import 'package:kansler/features/auth/data/sources/local.dart' as _i12;
import 'package:kansler/features/auth/data/sources/local.impl.dart' as _i13;
import 'package:kansler/features/auth/data/sources/remote.dart' as _i60;
import 'package:kansler/features/auth/data/sources/remote.impl.dart' as _i61;
import 'package:kansler/features/auth/domain/repositories/auth.repository.dart'
    as _i90;
import 'package:kansler/features/auth/domain/usecases/check_client_exist.usecase.dart'
    as _i103;
import 'package:kansler/features/auth/domain/usecases/client_phone_numbers.usecase.dart'
    as _i102;
import 'package:kansler/features/auth/domain/usecases/confirm_code.usecase.dart'
    as _i101;
import 'package:kansler/features/auth/domain/usecases/get_user_status.usecase.dart'
    as _i100;
import 'package:kansler/features/auth/domain/usecases/login.usecase.dart'
    as _i99;
import 'package:kansler/features/auth/domain/usecases/logout.usecase.dart'
    as _i104;
import 'package:kansler/features/auth/domain/usecases/send_code.usecase.dart'
    as _i98;
import 'package:kansler/features/auth/domain/usecases/set_auth_token.usecase.dart'
    as _i96;
import 'package:kansler/features/auth/domain/usecases/set_username.usecase.dart'
    as _i97;
import 'package:kansler/features/auth/presentation/screens/auth/bloc/auth_bloc.dart'
    as _i110;
import 'package:kansler/features/auth/presentation/screens/login/bloc/login_bloc.dart'
    as _i105;
import 'package:kansler/features/auth/presentation/screens/register/bloc/register_bloc.dart'
    as _i111;
import 'package:kansler/features/auth/presentation/sheets/confirm_code/confirm_code/confirm_code_bloc.dart'
    as _i113;
import 'package:kansler/features/cart/data/repositories/cart.repository.dart'
    as _i31;
import 'package:kansler/features/cart/data/sources/remote.dart' as _i20;
import 'package:kansler/features/cart/data/sources/remote.impl.dart' as _i21;
import 'package:kansler/features/cart/domain/repositories/cart.repository.dart'
    as _i30;
import 'package:kansler/features/cart/domain/usecases/add_product_to_cart.usecase.dart'
    as _i44;
import 'package:kansler/features/cart/domain/usecases/delete_product_in_cart.usecase.dart'
    as _i41;
import 'package:kansler/features/cart/domain/usecases/delete_products_in_cart.usecase.dart'
    as _i43;
import 'package:kansler/features/cart/domain/usecases/get_cart_price.usecase.dart'
    as _i46;
import 'package:kansler/features/cart/domain/usecases/get_cart_products.usecase.dart'
    as _i45;
import 'package:kansler/features/cart/domain/usecases/update_product_in_cart.usecase.dart'
    as _i42;
import 'package:kansler/features/cart/presentation/screen/bloc/cart_bloc.dart'
    as _i77;
import 'package:kansler/features/categories/data/repositories/categories.repository.dart'
    as _i67;
import 'package:kansler/features/categories/data/sources/remote.dart' as _i64;
import 'package:kansler/features/categories/data/sources/remote.impl.dart'
    as _i65;
import 'package:kansler/features/categories/domain/repositories/categories.repository.dart'
    as _i66;
import 'package:kansler/features/categories/domain/usecases/get_categories.usecase.dart'
    as _i85;
import 'package:kansler/features/categories/domain/usecases/get_category_children.usecase.dart'
    as _i87;
import 'package:kansler/features/categories/domain/usecases/get_category_products.usecase.dart'
    as _i86;
import 'package:kansler/features/categories/presentation/screens/category/bloc/categories_bloc.dart'
    as _i92;
import 'package:kansler/features/categories/presentation/screens/subcategory/bloc/subcategory_bloc.dart'
    as _i112;
import 'package:kansler/features/checkout/data/repositories/checkout.repository.dart'
    as _i75;
import 'package:kansler/features/checkout/data/sources/remote.dart' as _i52;
import 'package:kansler/features/checkout/data/sources/remote.impl.dart'
    as _i53;
import 'package:kansler/features/checkout/domain/repositories/checkout.repository.dart'
    as _i74;
import 'package:kansler/features/checkout/presentation/checkout_screen/bloc/checkout_bloc.dart'
    as _i95;
import 'package:kansler/features/home/data/repositories/product.repository.dart'
    as _i37;
import 'package:kansler/features/home/data/sources/remote.dart' as _i28;
import 'package:kansler/features/home/data/sources/remote.impl.dart' as _i29;
import 'package:kansler/features/home/domain/repositories/products.repository.dart'
    as _i36;
import 'package:kansler/features/home/domain/usecases/fetch_discount_products.usecase.dart'
    as _i55;
import 'package:kansler/features/home/domain/usecases/fetch_hit_products.usecase.dart'
    as _i54;
import 'package:kansler/features/home/domain/usecases/fetch_latest_products.usecase.dart'
    as _i56;
import 'package:kansler/features/home/domain/usecases/fetch_popular_products.usecase.dart'
    as _i57;
import 'package:kansler/features/home/presentation/blocs/banner/banner_bloc.dart'
    as _i6;
import 'package:kansler/features/home/presentation/blocs/discounts/discounts_bloc.dart'
    as _i80;
import 'package:kansler/features/home/presentation/blocs/hit/hit_bloc.dart'
    as _i89;
import 'package:kansler/features/home/presentation/blocs/last_viewed/last_viewed_bloc.dart'
    as _i4;
import 'package:kansler/features/home/presentation/blocs/latest/latest_bloc.dart'
    as _i82;
import 'package:kansler/features/home/presentation/blocs/popular/popular_bloc.dart'
    as _i73;
import 'package:kansler/features/home/presentation/blocs/recs/recs_bloc.dart'
    as _i3;
import 'package:kansler/features/home/presentation/blocs/templates/templates_bloc.dart'
    as _i5;
import 'package:kansler/features/limites/data/repositories/limits.repository.dart'
    as _i84;
import 'package:kansler/features/limites/data/source/remote.dart' as _i34;
import 'package:kansler/features/limites/data/source/remote.impl.dart' as _i35;
import 'package:kansler/features/limites/domain/repositories/limits.repository.dart'
    as _i83;
import 'package:kansler/features/limites/presentation/debt/cubit/debt_cubit.dart'
    as _i108;
import 'package:kansler/features/limites/presentation/limits_screen/cubit/limits_cubit.dart'
    as _i107;
import 'package:kansler/features/main/presentation/bloc/navbar_bloc.dart'
    as _i7;
import 'package:kansler/features/orders/data/repositories/order.repository.dart'
    as _i33;
import 'package:kansler/features/orders/data/sourses/remote.dart' as _i18;
import 'package:kansler/features/orders/data/sourses/remote.impl.dart' as _i19;
import 'package:kansler/features/orders/domain/repositories/order.repository.dart'
    as _i32;
import 'package:kansler/features/orders/presentation/order_details/bloc/order_details_bloc.dart'
    as _i49;
import 'package:kansler/features/orders/presentation/order_organization/bloc/order_organization_bloc.dart'
    as _i48;
import 'package:kansler/features/orders/presentation/screen/bloc/orders_bloc.dart'
    as _i47;
import 'package:kansler/features/product/data/repositories/product.repository.dart'
    as _i69;
import 'package:kansler/features/product/data/sources/remote.dart' as _i26;
import 'package:kansler/features/product/data/sources/remote.impl.dart' as _i27;
import 'package:kansler/features/product/domain/repositories/product.repository.dart'
    as _i68;
import 'package:kansler/features/product/domain/usecases/fetch.product.usecase.dart'
    as _i76;
import 'package:kansler/features/product/presentation/blocs/details/details_bloc.dart'
    as _i81;
import 'package:kansler/features/profile/data/repositories/profile.repository.dart'
    as _i25;
import 'package:kansler/features/profile/data/sources/remote.dart' as _i22;
import 'package:kansler/features/profile/data/sources/remote.impl.dart' as _i23;
import 'package:kansler/features/profile/domain/repositories/profile.repository.dart'
    as _i24;
import 'package:kansler/features/profile/presentation/screen/addresses/addresses/addresses_bloc.dart'
    as _i38;
import 'package:kansler/features/profile/presentation/screen/companies/companies/companies_bloc.dart'
    as _i39;
import 'package:kansler/features/profile/presentation/screen/profile/profile_bloc.dart'
    as _i40;
import 'package:kansler/features/search/data/repositories/brands.repository.dart'
    as _i79;
import 'package:kansler/features/search/data/repositories/organizations.repository.dart'
    as _i63;
import 'package:kansler/features/search/data/repositories/search.repository.dart'
    as _i71;
import 'package:kansler/features/search/data/sorces/brands_remote.dart' as _i58;
import 'package:kansler/features/search/data/sorces/brands_remote.impl.dart'
    as _i59;
import 'package:kansler/features/search/data/sorces/organizations_remote.dart'
    as _i16;
import 'package:kansler/features/search/data/sorces/organizations_remote.impl.dart'
    as _i17;
import 'package:kansler/features/search/data/sorces/search_remote.dart' as _i50;
import 'package:kansler/features/search/data/sorces/search_remote.impl.dart'
    as _i51;
import 'package:kansler/features/search/domain/repositories/brands.repository.dart'
    as _i78;
import 'package:kansler/features/search/domain/repositories/organizations.repositories.dart'
    as _i62;
import 'package:kansler/features/search/domain/repositories/search.repository.dart'
    as _i70;
import 'package:kansler/features/search/domain/usecases/brands.usecase.dart'
    as _i93;
import 'package:kansler/features/search/domain/usecases/organizations.usecase.dart'
    as _i88;
import 'package:kansler/features/search/domain/usecases/search.usecase.dart'
    as _i72;
import 'package:kansler/features/search/presentation/filter_screen/filter/filter_bloc.dart'
    as _i109;
import 'package:kansler/features/search/presentation/search_screen/blocs/brands/brands_bloc.dart'
    as _i94;
import 'package:kansler/features/search/presentation/search_screen/blocs/search_bloc/search_bloc.dart'
    as _i106;
import 'package:kansler/features/splash/presentation/bloc/splash_bloc.dart'
    as _i8;
import 'package:kansler/shared/services/device/device_info_service.dart'
    as _i10;
import 'package:kansler/shared/services/device/device_info_service.impl.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.RecsBloc>(() => _i3.RecsBloc());
    gh.factory<_i4.LastViewedBloc>(() => _i4.LastViewedBloc());
    gh.factory<_i5.TemplatesBloc>(() => _i5.TemplatesBloc());
    gh.factory<_i6.BannerBloc>(() => _i6.BannerBloc());
    gh.factory<_i7.NavbarBloc>(() => _i7.NavbarBloc());
    gh.singleton<_i8.SplashBloc>(() => _i8.SplashBloc());
    gh.lazySingleton<_i9.AppRouter>(() => _i9.AppRouter());
    gh.factory<_i10.DeviceInfoService>(() => _i11.DeviceInfoServiceImpl());
    gh.singleton<_i12.AuthLocalDataSource>(
        () => _i13.AuthLocalDataSourceImpl());
    gh.lazySingleton<_i14.DioClient>(
        () => _i14.DioClient(gh<_i15.AuthLocalDataSource>()));
    gh.lazySingleton<_i16.OrganizationsRemoteSource>(
        () => _i17.OrganizationsRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i18.OrdersRemoteSource>(
        () => _i19.OrdersSourceRemoteImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i20.CartRemoteSource>(
        () => _i21.CartRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i22.ProfileRemoteSource>(
        () => _i23.ProductRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i24.ProfileRepository>(
        () => _i25.ProfileRepositoryImpl(gh<_i22.ProfileRemoteSource>()));
    gh.lazySingleton<_i26.ProductRemoteDataSource>(
        () => _i27.ProductRemoteDataSourceImpl(gh<_i14.DioClient>()));
    gh.factory<_i28.ProductRemoteSource>(
        () => _i29.ProductRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i30.CartRepository>(
        () => _i31.CartRepositoryImpl(gh<_i20.CartRemoteSource>()));
    gh.lazySingleton<_i32.OrdersRepository>(
        () => _i33.OrderRepositoryImpl(gh<_i18.OrdersRemoteSource>()));
    gh.factory<_i34.LimitsRemoteSource>(
        () => _i35.LimitsRemoteImpl(gh<_i14.DioClient>()));
    gh.factory<_i36.ProductsRepository>(
        () => _i37.ProductsRepositoryImpl(gh<_i28.ProductRemoteSource>()));
    gh.factory<_i38.AddressesBloc>(
        () => _i38.AddressesBloc(gh<_i24.ProfileRepository>()));
    gh.lazySingleton<_i39.CompaniesBloc>(
        () => _i39.CompaniesBloc(gh<_i24.ProfileRepository>()));
    gh.lazySingleton<_i40.ProfileBloc>(
        () => _i40.ProfileBloc(gh<_i24.ProfileRepository>()));
    gh.factory<_i41.DeleteProductInCartUsecase>(
        () => _i41.DeleteProductInCartUsecase(gh<_i30.CartRepository>()));
    gh.factory<_i42.UpdateProductInCartUseCase>(
        () => _i42.UpdateProductInCartUseCase(gh<_i30.CartRepository>()));
    gh.factory<_i43.DeleteProductsInCartUsecase>(
        () => _i43.DeleteProductsInCartUsecase(gh<_i30.CartRepository>()));
    gh.factory<_i44.AddProductToCartUseCase>(
        () => _i44.AddProductToCartUseCase(gh<_i30.CartRepository>()));
    gh.factory<_i45.GetCartProductsUseCase>(
        () => _i45.GetCartProductsUseCase(gh<_i30.CartRepository>()));
    gh.factory<_i46.GetCartPriceUseCase>(
        () => _i46.GetCartPriceUseCase(gh<_i30.CartRepository>()));
    gh.lazySingleton<_i47.OrdersBloc>(
        () => _i47.OrdersBloc(gh<_i32.OrdersRepository>()));
    gh.factory<_i48.OrderOrganizationBloc>(
        () => _i48.OrderOrganizationBloc(gh<_i32.OrdersRepository>()));
    gh.factory<_i49.OrderDetailsBloc>(
        () => _i49.OrderDetailsBloc(gh<_i32.OrdersRepository>()));
    gh.lazySingleton<_i50.SearchRemoteSource>(
        () => _i51.SearchRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.factory<_i52.CheckoutRemoteSource>(
        () => _i53.CheckoutRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.factory<_i54.FetchHitProductUseCase>(
        () => _i54.FetchHitProductUseCase(gh<_i36.ProductsRepository>()));
    gh.factory<_i55.FetchDiscountProductUseCase>(
        () => _i55.FetchDiscountProductUseCase(gh<_i36.ProductsRepository>()));
    gh.factory<_i56.FetchLatestProductUseCase>(
        () => _i56.FetchLatestProductUseCase(gh<_i36.ProductsRepository>()));
    gh.factory<_i57.FetchPopularProductUseCase>(
        () => _i57.FetchPopularProductUseCase(gh<_i36.ProductsRepository>()));
    gh.lazySingleton<_i58.BrendsRemoteSource>(
        () => _i59.BrandsRemoteSourceImpl(gh<_i14.DioClient>()));
    gh.factory<_i60.AuthRemoteDataSource>(
        () => _i61.AuthRemoteDataSourceImpl(gh<_i14.DioClient>()));
    gh.lazySingleton<_i62.OrganizationsRepository>(() =>
        _i63.OrganizationsRepositoryImpl(gh<_i16.OrganizationsRemoteSource>()));
    gh.factory<_i64.CategoriesRemoteDataSource>(
        () => _i65.CategoriesRemoteDataSourceImpl(gh<_i14.DioClient>()));
    gh.factory<_i66.CategoriesRepository>(() =>
        _i67.CategoriesRepositoryImpl(gh<_i64.CategoriesRemoteDataSource>()));
    gh.lazySingleton<_i68.ProductRepository>(
        () => _i69.ProductRepositoryImpl(gh<_i26.ProductRemoteDataSource>()));
    gh.lazySingleton<_i70.SearchRepository>(
        () => _i71.SearchRepositoryImpl(gh<_i50.SearchRemoteSource>()));
    gh.lazySingleton<_i72.SearchUseCase>(
        () => _i72.SearchUseCase(gh<_i70.SearchRepository>()));
    gh.factory<_i73.PopularBloc>(
        () => _i73.PopularBloc(gh<_i57.FetchPopularProductUseCase>()));
    gh.factory<_i74.CheckoutRepository>(
        () => _i75.CheckoutRepositoryImpl(gh<_i52.CheckoutRemoteSource>()));
    gh.lazySingleton<_i76.FetchProductUseCase>(
        () => _i76.FetchProductUseCase(gh<_i68.ProductRepository>()));
    gh.factory<_i77.CartBloc>(() => _i77.CartBloc(
          gh<_i44.AddProductToCartUseCase>(),
          gh<_i41.DeleteProductInCartUsecase>(),
          gh<_i43.DeleteProductsInCartUsecase>(),
          gh<_i42.UpdateProductInCartUseCase>(),
          gh<_i46.GetCartPriceUseCase>(),
          gh<_i45.GetCartProductsUseCase>(),
        ));
    gh.lazySingleton<_i78.BrandsRepository>(
        () => _i79.BrandsRepositoryImpl(gh<_i58.BrendsRemoteSource>()));
    gh.factory<_i80.DiscountsBloc>(
        () => _i80.DiscountsBloc(gh<_i55.FetchDiscountProductUseCase>()));
    gh.factory<_i81.DetailsBloc>(
        () => _i81.DetailsBloc(gh<_i76.FetchProductUseCase>()));
    gh.factory<_i82.LatestBloc>(
        () => _i82.LatestBloc(gh<_i56.FetchLatestProductUseCase>()));
    gh.factory<_i83.LimitsRepository>(
        () => _i84.LimitsRepositoryImpl(gh<_i34.LimitsRemoteSource>()));
    gh.factory<_i85.GetCategoriesUseCase>(
        () => _i85.GetCategoriesUseCase(gh<_i66.CategoriesRepository>()));
    gh.factory<_i86.GetCategoryProducts>(
        () => _i86.GetCategoryProducts(gh<_i66.CategoriesRepository>()));
    gh.factory<_i87.GetCategoryChildrenUseCase>(
        () => _i87.GetCategoryChildrenUseCase(gh<_i66.CategoriesRepository>()));
    gh.lazySingleton<_i88.OrganizationsUseCase>(
        () => _i88.OrganizationsUseCase(gh<_i62.OrganizationsRepository>()));
    gh.factory<_i89.HitBloc>(
        () => _i89.HitBloc(gh<_i54.FetchHitProductUseCase>()));
    gh.factory<_i90.AuthRepository>(() => _i91.AuthRepositoryImpl(
          gh<_i60.AuthRemoteDataSource>(),
          gh<_i12.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i92.CategoriesBloc>(() => _i92.CategoriesBloc(
          gh<_i85.GetCategoriesUseCase>(),
          gh<_i87.GetCategoryChildrenUseCase>(),
        ));
    gh.lazySingleton<_i93.BrandsUseCase>(
        () => _i93.BrandsUseCase(gh<_i78.BrandsRepository>()));
    gh.lazySingleton<_i94.BrandsBloc>(
        () => _i94.BrandsBloc(gh<_i93.BrandsUseCase>()));
    gh.factory<_i95.CheckoutBloc>(
        () => _i95.CheckoutBloc(gh<_i74.CheckoutRepository>()));
    gh.factory<_i96.SetAuthTokenUseCase>(
        () => _i96.SetAuthTokenUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i97.SetUserNameUseCase>(
        () => _i97.SetUserNameUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i98.SendCodeUseCase>(
        () => _i98.SendCodeUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i99.LoginUseCase>(
        () => _i99.LoginUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i100.GetAuthStatusUseCase>(
        () => _i100.GetAuthStatusUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i101.ConfirmCodeUseCase>(
        () => _i101.ConfirmCodeUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i102.ClientPhoneNumbersUseCase>(
        () => _i102.ClientPhoneNumbersUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i103.CheckClientExistUseCase>(
        () => _i103.CheckClientExistUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i104.LogoutUseCase>(
        () => _i104.LogoutUseCase(gh<_i90.AuthRepository>()));
    gh.factory<_i105.LoginBloc>(() => _i105.LoginBloc(
          gh<_i99.LoginUseCase>(),
          gh<_i96.SetAuthTokenUseCase>(),
        ));
    gh.factory<_i106.SearchBloc>(
        () => _i106.SearchBloc(gh<_i72.SearchUseCase>()));
    gh.factory<_i107.LimitsCubit>(
        () => _i107.LimitsCubit(gh<_i83.LimitsRepository>()));
    gh.factory<_i108.DebtCubit>(
        () => _i108.DebtCubit(gh<_i83.LimitsRepository>()));
    gh.factory<_i109.FilterBloc>(
        () => _i109.FilterBloc(gh<_i88.OrganizationsUseCase>()));
    gh.lazySingleton<_i110.AuthBloc>(() => _i110.AuthBloc(
          gh<_i100.GetAuthStatusUseCase>(),
          gh<_i104.LogoutUseCase>(),
        ));
    gh.factory<_i111.RegisterBloc>(() => _i111.RegisterBloc(
          gh<_i103.CheckClientExistUseCase>(),
          gh<_i102.ClientPhoneNumbersUseCase>(),
          gh<_i98.SendCodeUseCase>(),
          gh<_i97.SetUserNameUseCase>(),
          gh<_i96.SetAuthTokenUseCase>(),
        ));
    gh.lazySingleton<_i112.SubcategoryBloc>(() => _i112.SubcategoryBloc(
          gh<_i87.GetCategoryChildrenUseCase>(),
          gh<_i86.GetCategoryProducts>(),
        ));
    gh.factory<_i113.ConfirmCodeBloc>(
        () => _i113.ConfirmCodeBloc(gh<_i101.ConfirmCodeUseCase>()));
    return this;
  }
}
