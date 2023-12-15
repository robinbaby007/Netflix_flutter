import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/size.dart';
import 'package:netflix/core/extensions.dart';
import 'package:netflix/presentation/common_widgets/widget_app_bar.dart';
import 'package:netflix/presentation/downloads/widget/custom_buttion.dart';
import 'package:netflix/presentation/downloads/widget/image_card.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: WidgetAppBar(title: 'Downloads'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.settings, color: Colors.white),
                      const SizedBox(width: 16),
                      Extensions.customText("Smart Download", 10, true, null),
                    ],
                  ),
                  const SizedBox(height: mediumSize),
                  Extensions.customText(
                      "Introducing Downloads for you", 20, true, null),
                  const SizedBox(height: smallSize),
                  Extensions.customText(
                      "We'll download a personalized section of  movies and shows  for you, so there's always something to watch on your device.",
                      13,
                      false,
                      Colors.grey),
                  const SizedBox(height: smallSize),
                  Container(
                    alignment: Alignment.center,
                    width: screenSize.width / 1.4,
                    height: screenSize.width / 1.4,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ImageSubCard(
                          networkImageUrl: Extensions.getMovieBanners()[2],
                          roationAngle: 20 * pi / 180,
                          margin: const EdgeInsets.only(left: 140, top: 0),
                        ),
                        ImageSubCard(
                          networkImageUrl: Extensions.getMovieBanners()[1],
                          roationAngle: -20 * pi / 180,
                          margin: const EdgeInsets.only(right: 140, top: 0),
                        ),
                        ImageMainCard(
                          networkImageUrl: Extensions.getMovieBanners()[0],
                          roationAngle: 0,
                          margin: const EdgeInsets.only(top: 30),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: extraLargeSize),
                  CustomButton(
                    padding: mediumSize,
                    text: "Setup",
                    backgroundColor: Colors.blue[800],
                    isBold: true,
                    textColor: Colors.white,
                    textSize: 22,
                  ),
                  const SizedBox(height: smallSize),
                  const CustomButton(
                    padding: largeSize,
                    text: "See what you can download",
                    backgroundColor: Colors.white,
                    isBold: true,
                    textColor: Colors.black,
                    textSize: 17,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
