import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/video_list_item.dart';
 
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

  static List<Color> getColors() {
    return [
      Colors.green,
      Colors.red,
      Colors.black,
      Colors.blue,
      Colors.yellow,
      Colors.white,
      Colors.purple,
      Colors.pink,
      Colors.orange,
    ];
  }

  static List<String> getUrls() {
    return [
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    ];
  }

  static List<Widget> colorListWidget() {
    List<Widget> allItems = [];
    getColors().asMap().forEach((index, element) {
      allItems.add(VideoListItem(index: index));
    });
    return allItems;
  }

  static List<Widget> getListWidget() {
    List<Widget> allItems = [];
    getUrls().asMap().forEach((index, element) {
      allItems.add(VideoListItem(index: index));
    });

    return allItems;
  }
}
