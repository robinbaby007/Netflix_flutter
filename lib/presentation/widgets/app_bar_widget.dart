import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        children: [
          const Text("New \$ Hot"),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/avatar.png',
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }

}
