import 'package:flutter/material.dart';
import 'package:netflix/core/extensions.dart';

class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Extensions.customText(title, 30, true,null),
            const Spacer(),
            const Icon(
              Icons.cast,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/avatar.png',
              width: 20,
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
