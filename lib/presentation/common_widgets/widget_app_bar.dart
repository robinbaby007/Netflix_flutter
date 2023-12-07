import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Text(
              "New \$ Hot",
              style: TextStyle(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
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
