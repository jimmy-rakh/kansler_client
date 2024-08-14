import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/app/di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt')
void configureDependencies({String? env}) {
  getIt.$initGetIt(environment: env);
}
