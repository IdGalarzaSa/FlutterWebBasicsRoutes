import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/router/route_generator.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/layouts/main_layout_page.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';

void main() {
  // Ejecutamos la configuracion del get it
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEDESA',
      initialRoute: CounterStatefulView.ROUTE_NAME,
      onGenerateRoute: (route) => RouteGenerator.generateRoute(route),
      // Usamos el locator donde se almacenan todos nuestros servicios como singletons
      navigatorKey: locator<NavigationService>().navigationKey,
      builder: (_, child) {
        return MainLayoutPage(viewChild: child ?? Container());
      },
    );
  }
}
