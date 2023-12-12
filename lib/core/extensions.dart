import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Extensions {
  static Text customText(String text, double size, bool isBold, Color? color) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          fontSize: size,
          color: color ?? Colors.white,
          fontWeight: isBold == true ? FontWeight.w900 : FontWeight.normal),
    );
  }

  static List<String> getMovieBanners() {
    return [
      "https://www.themoviedb.org/t/p/original/a4DDU8cSlBI9lUC7w2m93nQq5D6.jpg",
      "https://www.themoviedb.org/t/p/original/7M7hxeLiTcta74AVasacWQFIFmv.jpg",
      "https://www.themoviedb.org/t/p/original/pDBn3l3ouE13vIpG0WR81QzwGWz.jpg"
    ];
  }
}
