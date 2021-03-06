import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function buttonFunction;
  final String buttonText;
  final Color buttonColor;
  final AlignmentGeometry textAlignment;

  const CustomTextButton({
    Key? key,
    required this.buttonFunction,
    required this.buttonText,
    this.buttonColor = Colors.amber,
    this.textAlignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: this.buttonColor,
        alignment: textAlignment,
      ),
      onPressed: () => this.buttonFunction(),
      child: Padding(padding: EdgeInsets.all(10), child: Text(this.buttonText)),
    );
  }
}
