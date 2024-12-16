import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NumberAndStar extends StatelessWidget {
  const NumberAndStar({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number.toString(),
          style: const TextStyle(
            color: AppConstants.pinkSub,
            fontSize: 12,
          ),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset("assets/icons/star.svg"),
      ],
    );
  }
}
