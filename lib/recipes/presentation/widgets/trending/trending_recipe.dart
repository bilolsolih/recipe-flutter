import 'package:Recipes/common/widgets/clock_and_duration.dart';
import 'package:Recipes/common/widgets/number_and_star.dart';
import 'package:Recipes/common/widgets/recipe_description.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class TrendingRecipes extends StatelessWidget {
  const TrendingRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Screen.padding36),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeText(text: "Trending Recipe"),
            SizedBox(height: 9),
            TrendingRecipeMain(
              fontColor: Colors.white,
              backgroundColor: AppConstants.beigeColor,
            ),
          ],
        ),
      ),
    );
  }
}

class TrendingRecipeMain extends StatelessWidget {
  const TrendingRecipeMain({super.key, required this.fontColor, required this.backgroundColor});

  final Color fontColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 358 * Screen.wratio,
        height: 182 * Screen.hratio,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: 348 * Screen.wratio,
                height: 50 * Screen.hratio,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  border: Border.all(color: AppConstants.pinkSub, width: 1),
                  color: backgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RecipeText(
                            text: "Salami and cheese pizza",
                            fontSize: 13,
                            color: fontColor,
                            fontWeight: FontWeight.normal,
                          ),
                          const ClockAndDuration(duration: "30min"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RecipeDescription(desc: "This is a quick overview of the ingredients...", fontColor: fontColor),
                          const NumberAndStar(number: 5),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                image: const AssetImage("assets/images/trending/salami_pizza.png"),
                width: 358 * Screen.wratio,
                height: 143 * Screen.hratio,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
