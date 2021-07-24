import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/pages/counter_provider_page.dart';
import 'package:flutter_web_basics/ui/pages/counter_stateful_page.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        children: [
          CustomTextButton(
            buttonFunction: () =>
                Navigator.pushNamed(context, CounterStatefulPage.ROUTE_NAME),
            buttonText: "Stateful counter",
          ),
          SizedBox(width: 10),
          CustomTextButton(
            buttonFunction: () =>
                Navigator.pushNamed(context, CounterProviderPage.ROUTE_NAME),
            buttonText: "Provider counter",
          ),
          SizedBox(width: 10),
          CustomTextButton(
            buttonFunction: () => Navigator.pushNamed(context, "/Abdas2312312"),
            buttonText: "Other page",
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
