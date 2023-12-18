import 'package:flutter/material.dart';

class ImageIconWithText extends StatelessWidget {
  const ImageIconWithText({super.key, required this.icon, required this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
