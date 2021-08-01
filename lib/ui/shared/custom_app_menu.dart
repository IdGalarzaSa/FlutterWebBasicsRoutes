import 'package:flutter/material.dart';
import 'package:flutter_web_basics/locator.dart';
import 'package:flutter_web_basics/services/navigation_service.dart';
import 'package:flutter_web_basics/ui/shared/custom_text_button.dart';
import 'package:flutter_web_basics/ui/views/counter_provider_view.dart';
import 'package:flutter_web_basics/ui/views/counter_stateful_view.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return constraints.maxWidth > 520 ? _HorizontalMenu() : _VerticalMenu();
      },
    );
  }
}

class _HorizontalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
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
                  .navigateTo("${CounterStatefulView.ROUTE_NAME}/100"),
              buttonText: "Stateful counter init with 100",
            ),
            SizedBox(width: 10),
            CustomTextButton(
              buttonFunction: () => locator<NavigationService>()
                  .navigateTo(CounterProviderView.ROUTE_NAME),
              buttonText: "Provider counter",
            ),
            SizedBox(width: 10),
            CustomTextButton(
              buttonFunction: () => locator<NavigationService>()
                  .navigateTo("${CounterProviderView.ROUTE_NAME}?q=75"),
              buttonText: "Provider counter init with 75",
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
      ),

      // child:
    );
  }
}

class _VerticalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  .navigateTo("${CounterStatefulView.ROUTE_NAME}/100"),
              buttonText: "Stateful counter init with 100",
            ),
            SizedBox(width: 10),
            CustomTextButton(
              buttonFunction: () => locator<NavigationService>()
                  .navigateTo(CounterProviderView.ROUTE_NAME),
              buttonText: "Provider counter",
            ),
            SizedBox(width: 10),
            CustomTextButton(
              buttonFunction: () => locator<NavigationService>()
                  .navigateTo("${CounterProviderView.ROUTE_NAME}?q=75"),
              buttonText: "Provider counter init with 75",
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
      ),
    );
  }
}
