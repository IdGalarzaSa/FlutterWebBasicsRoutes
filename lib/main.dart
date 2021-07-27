import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/router/route.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/layouts/main_layout_page.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';

void main() {
  // Ejecutamos la configuracion del get it
  setupLocator();
  Routes.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      // Requerido poner este
      initialRoute: "/",
      // Asignamos Route de fluro
      onGenerateRoute: Routes.fluroRoute.generator,
      navigatorKey: locator<NavigationService>().navigationKey,
      builder: (_, child) {
        return MainLayoutPage(viewChild: child ?? Container());
      },
    );
  }
}
