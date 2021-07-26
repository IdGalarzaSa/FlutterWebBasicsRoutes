import 'package:flutter/material.dart';
import 'package:flutter_web_basics/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  // Widget que le pasaremos para renderizar o reemplazar
  final Widget viewChild;

  const MainLayoutPage({
    Key? key,
    required this.viewChild,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppMenu(),
          Spacer(),
          Expanded(child: viewChild),
          Spacer(),
        ],
      ),
    );
  }
}
