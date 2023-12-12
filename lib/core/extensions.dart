
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Extensions {
static Text customText(String text, double size, bool isBold,Color? color) {
    return Text(text,
        style: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: size,
            color: color ?? Colors.white ,
            fontWeight: FontWeight.bold));
  }
}
