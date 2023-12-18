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
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ludo",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.black87,
                    child: Icon(
                      Icons.volume_off,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    width: 25,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.black87,
                    ),
                    child: Text(
                      "16+",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/laugh_dp.jpeg"),
                  ),
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
          ),
        )
      ],
    );
  }
}
