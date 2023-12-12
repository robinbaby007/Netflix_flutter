import 'package:flutter/material.dart';
import 'package:netflix/core/extensions.dart';
import 'package:netflix/presentation/common_widgets/widget_app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                const Icon(Icons.settings, color: Colors.white),
                const SizedBox(width: 16),
                Extensions.customText("Smart Download", 10, true,null),
              ],
            ),
            const SizedBox(height: 14),

            Container(
              alignment: Alignment.center,
              child: Extensions.customText("Introducing Downloads for you", 20, true, null),
            )
          
            
          ],
        ),
      )),
    );
  }
}
