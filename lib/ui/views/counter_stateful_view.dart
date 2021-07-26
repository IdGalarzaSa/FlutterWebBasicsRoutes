import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';

class CounterStatefulView extends StatefulWidget {
  static const ROUTE_NAME = "/stateful";

  @override
  _CounterStatefulViewState createState() => _CounterStatefulViewState();
}

class _CounterStatefulViewState extends State<CounterStatefulView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
      ],
    );
  }
}
