import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class RecipeText extends StatelessWidget {
  const RecipeText({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = AppConstants.mainColor,
    this.fontWeight = FontWeight.w500,
  });

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: 1.0,
      ),
    );
  }
}
