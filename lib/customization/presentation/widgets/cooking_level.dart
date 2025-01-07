import 'package:flutter/material.dart';

import 'cooking_level_tile.dart';
import 'intro_text.dart';

class CookingLevel extends StatelessWidget {
  const CookingLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        IntroText(
          title: "¿What is your cooking level?",
          desc: "Please select you cooking level for a better recommendations.",
        ),
        SizedBox(height: 20),
        CookingLevelTile(
          title: "Novice",
          desc: "Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar.",
        ),
        SizedBox(height: 32),
        CookingLevelTile(
          title: "Intermediate",
          desc: "Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar.",
        ),
        SizedBox(height: 32),
        CookingLevelTile(
          title: "Advanced",
          desc: "Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar.",
        ),
        SizedBox(height: 32),
        CookingLevelTile(
          title: "Professional",
          desc: "Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar.",
        ),
      ],
    );
  }
}
