import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';
import 'package:flutter_web_basics/ui/views/counter_provider_view.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        children: [
          CustomTextButton(
            buttonFunction: () =>
                // Navigator.pushNamed(context, CounterStatefulView.ROUTE_NAME),
                locator<NavigationService>()
                    .navigateTo(CounterStatefulView.ROUTE_NAME),
            buttonText: "Stateful counter",
          ),
          SizedBox(width: 10),
          CustomTextButton(
            buttonFunction: () => locator<NavigationService>()
                .navigateTo(CounterProviderView.ROUTE_NAME),
            buttonText: "Provider counter",
          ),
          SizedBox(width: 10),
          CustomTextButton(
            buttonFunction: () =>
                locator<NavigationService>().navigateTo("/ddasda1232132"),
            buttonText: "Other page",
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
