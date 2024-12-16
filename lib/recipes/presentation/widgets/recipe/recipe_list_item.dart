import 'package:Recipes/common/widgets/clock_and_duration.dart';
import 'package:Recipes/common/widgets/number_and_star.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem({super.key, required this.title, required this.desc, required this.duration, required this.number, required this.image});

  final String title, desc, duration, image;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 169 * Screen.wratio,
        height: 226 * Screen.hratio,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  width: 159 * Screen.wratio,
                  height: 76 * Screen.hratio,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    border: Border.all(color: AppConstants.pink, width: 2),
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
                      Text(
                        desc,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "League Spartan",
                          fontSize: 13 * Screen.wratio,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NumberAndStar(number: number),
                          ClockAndDuration(duration: duration),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image(
                  image: AssetImage(image),
                  width: 169 * Screen.wratio,
                  height: 153 * Screen.hratio,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
