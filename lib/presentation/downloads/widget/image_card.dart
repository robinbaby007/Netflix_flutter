import 'package:flutter/material.dart';

class ImageMainCard extends StatelessWidget {
  const ImageMainCard(
      {super.key,
      required this.roationAngle,
      required this.networkImageUrl,
      this.margin});

  final double roationAngle;
  final String networkImageUrl;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: roationAngle,
      child: Container(
        margin: margin,
        width: screenSize.width / 2.5,
        height: screenSize.width / 1.8,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(networkImageUrl),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}


class ImageSubCard extends StatelessWidget {
  const ImageSubCard(
      {super.key,
      required this.roationAngle,
      required this.networkImageUrl,
      this.margin});

  final double roationAngle;
  final String networkImageUrl;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: roationAngle,
      child: Container(
        margin: margin,
        width: screenSize.width / 2.5,
        height: screenSize.width / 2,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(networkImageUrl),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}




 