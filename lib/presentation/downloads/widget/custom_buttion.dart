import 'package:flutter/material.dart';
import 'package:netflix/core/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.padding,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.textSize,
      required this.isBold});

  final double padding;
  final Color? backgroundColor;
  final String text;
  final Color textColor;
  final double textSize;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding, right: padding),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Extensions.customText(text, textSize, isBold, textColor),
        ),
      ),
    );
  }
}
