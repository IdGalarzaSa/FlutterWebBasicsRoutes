import 'package:flutter/material.dart';
import 'package:flutter_web_basics/router/route_generator.dart';
import 'package:flutter_web_basics/ui/pages/counter_stateful_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEDESA',
      initialRoute: CounterStatefulPage.ROUTE_NAME,
      // Cuando definimos un route generator, ya no requermimos definir la propiedad "route"

      // routes: {
      //   CounterStatefulPage.routeName: (_) => CounterStatefulPage(),
      //   CounterProviderPage.routeName: (_) => CounterProviderPage()
      // },

      onGenerateRoute: (route) => RouteGenerator.generateRoute(route),
    );
  }
}
