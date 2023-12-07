import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/botton_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: navigationIndex,
          builder: (context, index, _) {
            var screen = switch (index) {
              0 => const ScreenHome(),
              1 => const ScreenNewAndHot(),
              2 => const ScreenFastLaugh(),
              3 => const ScreenSearch(),
              4 => const ScreenDownloads(),
              _ => const ScreenHome()
            };
            return screen;
          }),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
