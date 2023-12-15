import 'package:flutter/material.dart';
import 'package:netflix/core/colors/size.dart';
import 'package:netflix/core/extensions.dart';
import 'package:netflix/presentation/fast_laugh/widgets/image_icon_with_text.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Extensions.getColors()[index],
        ),
        const Row(
          children: [
            Column(
              children: [
                Text("Ludo"),
                Spacer(),
                Icon(Icons.volume_off),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text("16+"),
                Spacer(),
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/laugh_dp.jpeg")),
                Text("Ludo"),
                SizedBox(height: mediumSize),
                ImageIconWithText(icon: Icons.emoji_emotions, text: "LOL"),
                SizedBox(height: mediumSize),
                ImageIconWithText(icon: Icons.add, text: "My List"),
                SizedBox(height: mediumSize),
                ImageIconWithText(icon: Icons.share, text: "Share"),
                SizedBox(height: mediumSize),
                ImageIconWithText(icon: Icons.play_arrow_rounded, text: "Play"),
              ],
            ),
          ],
        )
      ],
    );
  }
}
