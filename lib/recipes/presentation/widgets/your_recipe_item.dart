import 'package:Recipes/common/widgets/clock_and_duration.dart';
import 'package:Recipes/common/widgets/number_and_star.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class YourRecipe extends StatelessWidget {
  const YourRecipe({super.key, required this.title, required this.duration, required this.number, required this.image});

  final String title, duration, image;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image(
            image: AssetImage(image),
            width: 169 * Screen.wratio,
            height: 162 * Screen.hratio,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: -20,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            width: 169 * Screen.wratio,
            height: 48 * Screen.hratio,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12 * Screen.wratio,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NumberAndStar(number: number),
                    const SizedBox(width: 20),
                    ClockAndDuration(duration: duration),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
