import 'dart:ffi';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Extensions {
  // Text getCustomFontStyle(String text, double size, Bool isBold) {
  //   return TextStyle(
  //       fontFamily: GoogleFonts.montserrat().fontFamily,
  //       fontSize: 10,
  //       fontWeight: FontWeight.bold);
  // }

  Text getText(String text, double size, Bool isBold) {
    return Text(text,
        style: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: size,
            fontWeight: FontWeight.bold));
  }
}
