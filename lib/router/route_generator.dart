import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_basics/ui/views/counter_provider_view.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';
import 'package:flutter_web_basics/ui/views/not_found_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings route) {
    switch (route.name) {
      case CounterStatefulView.ROUTE_NAME:
        return _fadeRoute(
          CounterStatefulView(),
          CounterStatefulView.ROUTE_NAME,
        );
      case CounterProviderView.ROUTE_NAME:
        return _fadeRoute(
          CounterProviderView(),
          CounterProviderView.ROUTE_NAME,
        );
      default:
        return _fadeRoute(
          NotFoundView(),
          NotFoundView.ROUTE_NAME,
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
