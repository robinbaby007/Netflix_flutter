import 'package:flutter/material.dart';

class ImageIconWithText extends StatelessWidget {
  const ImageIconWithText({super.key, required this.icon, required this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
