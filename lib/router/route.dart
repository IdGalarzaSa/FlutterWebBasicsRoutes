import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_basics/ui/views/counter_provider_view.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';
import 'package:flutter_web_basics/ui/views/not_found_view.dart';

class Routes {
  static final FluroRouter fluroRoute = new FluroRouter();

  static final TransitionType routeTransitionType =
      kIsWeb ? TransitionType.fadeIn : TransitionType.cupertino;

  static void configureRoutes() {
    // Siempre es necesario definir esta ruta
    fluroRoute.define("/", handler: _counterStatefulViewHandler);

    // 404 not found handler
    fluroRoute.notFoundHandler = _notFoundHandler;

    // StateFul
    fluroRoute.define(
      CounterStatefulView.ROUTE_NAME,
      handler: _counterStatefulViewHandler,
      transitionType: routeTransitionType,
    );

    fluroRoute.define(
      "${CounterStatefulView.ROUTE_NAME}/:base",
      handler: _counterStatefulViewHandler,
      transitionType: routeTransitionType,
    );

    // Provider
    fluroRoute.define(
      CounterProviderView.ROUTE_NAME,
      handler: _counterProviderViewHandler,
      transitionType: routeTransitionType,
    );
  }

  // Handlers
  static Handler _notFoundHandler =
      Handler(handlerFunc: (context, params) => NotFoundView());

  // Stateful route handler
  static Handler _counterStatefulViewHandler = Handler(
    handlerFunc: (context, params) {
      final base = params["base"];
      int counter = 0;
      if (base?.first != null && int.tryParse(base?.first ?? "") != null) {
        counter = int.parse(base?.first ?? "");
      }

      return CounterStatefulView(counter: counter);
    },
  );

  // Provider route handler
  static Handler _counterProviderViewHandler = Handler(
    handlerFunc: (context, params) {
      print(params);

      final base = params["q"];
      return CounterProviderView(counter: base?.first ?? '');
    },
  );
}
