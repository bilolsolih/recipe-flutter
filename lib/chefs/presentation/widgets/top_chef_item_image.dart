import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class TopChefItemImage extends StatelessWidget {
  const TopChefItemImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image(
          image: AssetImage(image),
          width: 170 * Screen.wratio,
          height: 153 * Screen.hratio,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}