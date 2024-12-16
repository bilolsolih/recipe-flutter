import 'package:Recipes/common/widgets/svg_icon_and_text.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'recipe_detail_widgets.dart';

class RecipeVideoInstructions extends StatelessWidget {
  const RecipeVideoInstructions({super.key, required this.title, required this.duration, required this.reviews});

  final String title;
  final int duration, reviews;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356 * Screen.wratio,
      height: 337 * Screen.wratio,
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RecipeText(text: title, color: Colors.white, fontSize: 20 * Screen.wratio),
                SvgIconAndText(svg: "assets/icons/star.svg", text: duration.toString(), svgColor: Colors.white),
                SvgIconAndText(svg: "assets/icons/reviews.svg", text: reviews.toString(), svgColor: Colors.white),
              ],
            ),
          ),
          const RecipeVideoWithPlayButton(),
        ],
      ),
    );
  }
}
