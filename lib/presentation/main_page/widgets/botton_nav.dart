import 'package:flutter/material.dart';

ValueNotifier<int> navigationIndex = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationIndex,
      builder: (context, position, widget) {
        return BottomNavigationBar(
            currentIndex: position,
            items: getItems(),
            onTap: (position) {
              navigationIndex.value = position;
            },
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey);
      },
    );
  }

  List<BottomNavigationBarItem> getItems() {
    List<BottomNavigationBarItem> bottomNavigationItems = [
      const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/home.png'),
          ),
          label: "Home"),
      const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/play.png'),
          ),
          label: "New & Hot"),
      const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/smile.png'),
          ),
          label: "Fast Laugh"),
      const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/search.png'),
          ),
          label: "Search"),
      const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/download.png'),
          ),
          label: "Downloads"),
    ];

    return bottomNavigationItems;
  }
}
