import 'package:flutter/material.dart';
import 'package:netflix/core/extensions.dart';
 
class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) {},
          scrollDirection: Axis.vertical,
          children: Extensions.getListWidget(),
        ),
      ),
    );
  }
}
