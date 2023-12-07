import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBarWidget(),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Home Page',
          ),
        ),
      ),
    );
  }
}
