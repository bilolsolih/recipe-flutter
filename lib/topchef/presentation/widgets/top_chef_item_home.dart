import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class TopChefItemHome extends StatelessWidget {
  const TopChefItemHome({super.key, required this.name, required this.image});

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image(
              image: AssetImage(image),
              width: 83 * Screen.wratio,
              height: 74 * Screen.hratio,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
