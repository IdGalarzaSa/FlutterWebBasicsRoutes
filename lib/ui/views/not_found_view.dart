import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';

class NotFoundView extends StatelessWidget {
  static const ROUTE_NAME = "/NotFound";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Error 404",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Not found page",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            CustomTextButton(
                buttonFunction: () => Navigator.pushReplacementNamed(
                    context, CounterStatefulView.ROUTE_NAME),
                buttonText: "Go back")
          ],
        ),
      ),
    );
  }
}
