import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';

class CounterStatefulPage extends StatefulWidget {
  static const ROUTE_NAME = "/stateful";

  @override
  _CounterStatefulPageState createState() => _CounterStatefulPageState();
}

class _CounterStatefulPageState extends State<CounterStatefulPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Counter stateful",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "Counter $counter",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                  buttonFunction: () => setState(() => counter++),
                  buttonText: "Incrementar",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTextButton(
                  buttonFunction: () => setState(() => counter--),
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
