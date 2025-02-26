import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import 'package:kansler/features/home/presentation/blocs/banner/banner_bloc.dart';
import 'package:kansler/features/search/presentation/search_screen/blocs/prices/prices_bloc.dart';
import 'package:kansler/features/settings/presentation/theme/theme_bloc.dart';
import 'package:kansler/shared/services/firebase/notification_service.dart';
import 'package:kansler/shared/services/logger/logger_service.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';
import 'app/app.dart';
import 'app/di.dart';
import 'core/enums/auth_status.dart';
import 'features/auth/data/sources/local.keys.dart';
import 'features/auth/presentation/screens/auth/bloc/auth_bloc.dart';
import 'features/cart/presentation/screen/cart_bloc/cart_bloc.dart';
import 'features/categories/presentation/screens/category/bloc/categories_bloc.dart';
import 'features/categories/presentation/screens/subcategory/bloc/subcategory_bloc.dart';
import 'features/checkout/presentation/checkout_screen/bloc/checkout_bloc.dart';
import 'features/home/presentation/blocs/discounts/discounts_bloc.dart';
import 'features/home/presentation/blocs/hit/hit_bloc.dart';
import 'features/home/presentation/blocs/latest/latest_bloc.dart';
import 'features/home/presentation/blocs/popular/popular_bloc.dart';
import 'features/main/presentation/bloc/navbar_bloc.dart';
import 'features/orders/presentation/screen/bloc/orders_bloc.dart';
import 'features/profile/presentation/screen/companies/companies/companies_bloc.dart';
import 'features/profile/presentation/screen/profile/profile_bloc.dart';
import 'features/search/presentation/search_screen/blocs/brands/brands_bloc.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(env: Environment.prod);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  try {
    await EasyLocalization.ensureInitialized();
    await _setUpHive();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    NotificationService.init();
  } catch (e) {
    log.e(e.toString());
  } finally {
    runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('ru'),
          Locale('uz'),
        ],
        path: 'assets/locale',
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AuthBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<BannerBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<NavbarBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CategoriesBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<SubcategoryBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<HitBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<PopularBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<LatestBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<BrandsBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CartBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<ProfileBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CompaniesBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<OrdersBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<DiscountsBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<PreordersBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CheckoutBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<ThemeBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<PricesBloc>(),
            ),
          ],
          child: HookedBlocConfigProvider(
            injector: () => getIt.get,
            builderCondition: (state) => state != null,
            listenerCondition: (state) => state != null,
            child:   const KanslerApp(),
          ),
        ),
      ),
    );
  }
}

Future<void> _setUpHive() async {
//here
  if (kIsWeb) {
    String path = "/assets/db";
    Hive.init(path);
  } else {
    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }

  Hive.registerAdapter(AuthStatusAdapter());

  await Hive.openBox(AuthLocalKeys.authBox);
}
