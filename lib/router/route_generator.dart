import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_basics/ui/pages/counter_provider_page.dart';
import 'package:flutter_web_basics/ui/pages/counter_stateful_page.dart';
import 'package:flutter_web_basics/ui/pages/not_found_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings route) {
    switch (route.name) {
      case CounterStatefulPage.ROUTE_NAME:
        return _fadeRoute(
          CounterStatefulPage(),
          CounterStatefulPage.ROUTE_NAME,
        );
      case CounterProviderPage.ROUTE_NAME:
        return _fadeRoute(
          CounterProviderPage(),
          CounterProviderPage.ROUTE_NAME,
        );
      default:
        return _fadeRoute(
          NotFoundPage(),
          NotFoundPage.ROUTE_NAME,
        );
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings:
          RouteSettings(name: routeName), // Definimos el nombre de la ruta
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) =>
          // Preguntamos si la plataforma es web o no
          kIsWeb
              ? FadeTransition(
                  opacity: animation,
                  child: child,
                )
              : CupertinoPageTransition(
                  primaryRouteAnimation: animation,
                  secondaryRouteAnimation: __,
                  child: child,
                  linearTransition: true,
                ),
    );
  }
}
