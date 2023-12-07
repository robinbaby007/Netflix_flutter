import 'package:flutter/material.dart';
import 'package:netflix/presentation/common_widgets/widget_app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: WidgetAppBar(),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Downloads',
          ),
        ),
      ),
    );
  }
}
