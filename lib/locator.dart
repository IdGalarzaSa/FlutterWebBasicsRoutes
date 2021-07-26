import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

// Inicializa y configuta los servicios que usamos como
// singletons
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
