import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text.dart';

class SvgIconAndText extends StatelessWidget {
  const SvgIconAndText({
    super.key,
    required this.svg,
    required this.text,
    required this.svgColor,
  });

  final String svg, text;
  final Color svgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svg,
          colorFilter: ColorFilter.mode(svgColor, BlendMode.srcIn),
        ),
        const SizedBox(width: 3),
        RecipeText(
          text: text,
          color: Colors.black,
        ),
      ],
    );
  }
}
