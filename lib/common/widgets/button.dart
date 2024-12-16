import 'package:flutter/material.dart';

class RecipeButton extends StatelessWidget {
  const RecipeButton({
    super.key,
    required this.title,
    required this.fontSize,
    required this.width,
    required this.height,
    required this.foreground,
    required this.background,
    required this.callback,
  });

  final String title;
  final Color background, foreground;
  final double width, height, fontSize;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          foregroundColor: foreground,
          backgroundColor: background,
          padding: const EdgeInsets.all(0)
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: foreground,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
