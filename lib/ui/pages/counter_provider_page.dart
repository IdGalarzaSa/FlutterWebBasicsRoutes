import 'package:flutter/material.dart';
import 'package:flutter_web_basics/providers/counter_provider.dart';
import 'package:flutter_web_basics/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  static const ROUTE_NAME = "/provider";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Counter ${counterProvider.counter}",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Counter 0",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                  buttonFunction: () => {counterProvider.increment()},
                  buttonText: "Incrementar",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTextButton(
                  buttonFunction: () => {counterProvider.decrement()},
                  buttonText: "Decrementar",
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
