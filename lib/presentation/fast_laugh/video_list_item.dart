import 'package:flutter/material.dart';
import 'package:netflix/core/extensions.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Extensions.getColors()[index],
    );
  }
}
