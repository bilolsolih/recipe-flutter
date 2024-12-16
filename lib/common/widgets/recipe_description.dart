import 'package:flutter/material.dart';

class RecipeDescription extends StatelessWidget {
  const RecipeDescription({super.key, required this.desc, required this.fontColor, this.fontSize = 13});

  final String desc;
  final Color fontColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(
        color: fontColor,
        fontFamily: "League Spartan",
        fontSize: fontSize,
        fontWeight: FontWeight.w100,
        height: 1.0,
      ),
    );
  }
}
