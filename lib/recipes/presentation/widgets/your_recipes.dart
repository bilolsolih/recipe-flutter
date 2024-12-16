import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'your_recipe_item.dart';

class YourRecipes extends StatelessWidget {
  const YourRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screen.padding36 * Screen.wratio, vertical: 14),
      height: 255 * Screen.hratio,
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeText(text: "Your Recipes", color: Colors.white),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              YourRecipe(
                title: "Chicken Burger",
                duration: "15min",
                number: 5,
                image: "assets/images/your_recipes/chicken_burger.png",
              ),
              YourRecipe(
                title: "Tiramisu",
                duration: "15min",
                number: 5,
                image: "assets/images/your_recipes/tiramisu.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
