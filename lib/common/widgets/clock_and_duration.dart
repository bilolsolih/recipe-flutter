import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClockAndDuration extends StatelessWidget {
  const ClockAndDuration({
    super.key,
    required this.duration,
    this.svgColor = AppConstants.pinkSub,
    this.textColor = AppConstants.pinkSub,
  });

  final String duration;
  final Color svgColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/clock.svg",
          colorFilter: ColorFilter.mode(svgColor, BlendMode.srcIn),
        ),
        const SizedBox(width: 5),
        Text(
          duration,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
