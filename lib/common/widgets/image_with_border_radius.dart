import 'package:flutter/material.dart';

class ImageWithBorderRadius extends StatelessWidget {
  const ImageWithBorderRadius({super.key, required this.image, required this.width, required this.height, this.borderRadius = 14.0});

  final String image;
  final double borderRadius, width, height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image(
        image: AssetImage(image),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
