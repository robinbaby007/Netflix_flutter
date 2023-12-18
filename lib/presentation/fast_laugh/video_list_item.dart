import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/size.dart';
import 'package:netflix/core/extensions.dart';
 import 'package:netflix/presentation/fast_laugh/widgets/image_icon_with_text.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_source.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index, required this.heading});
  final int index;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoScreen(url: Extensions.getUrls()[index]),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: GoogleFonts.sonsieOne(
                      textStyle: const TextStyle(fontSize: 50),
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
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
                    child: const Text(
                      "16+",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/laugh_dp.jpeg"),
                  ),
                  Text(heading),
                  const SizedBox(height: mediumSize),
                  const ImageIconWithText(
                      icon: Icons.emoji_emotions, text: "LOL"),
                  const SizedBox(height: mediumSize),
                  const ImageIconWithText(icon: Icons.add, text: "My List"),
                  const SizedBox(height: mediumSize),
                  const ImageIconWithText(icon: Icons.share, text: "Share"),
                  const SizedBox(height: mediumSize),
                  const ImageIconWithText(
                      icon: Icons.play_arrow_rounded, text: "Play"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
