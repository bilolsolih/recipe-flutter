import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../your_recipe_item.dart';

class RecipeVideoWithPlayButton extends StatelessWidget {
  const RecipeVideoWithPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 356 * Screen.wratio,
      height: 281 * Screen.wratio,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const AspectRatio(
              aspectRatio: 356 / 281,
              child: Image(
                image: AssetImage("assets/images/trending/salami_pizza.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 75 * Screen.wratio,
              height: 75 * Screen.wratio,
              decoration: BoxDecoration(
                color: AppConstants.mainColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/play.svg",
                  width: 30 * Screen.wratio,
                  height: 40 * Screen.wratio,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeDetailChefInfo extends StatelessWidget {
  const RecipeDetailChefInfo({super.key, required this.username, required this.name, required this.image});

  final String username, name, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage(image),
                width: 64 * Screen.wratio,
                height: 64 * Screen.wratio,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeText(text: username, fontSize: 12, fontWeight: FontWeight.w300),
                const SizedBox(height: 5),
                RecipeText(text: name, fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 109 * Screen.wratio,
          height: 21 * Screen.hratio,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: AppConstants.mainColor,
              backgroundColor: AppConstants.pink,
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {},
            child: const RecipeText(text: "Following"),
          ),
        )
      ],
    );
  }
}

class RecipeDetailDetailsAndDescription extends StatelessWidget {
  const RecipeDetailDetailsAndDescription({super.key, required this.duration, required this.desc});

  final String desc;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const RecipeText(text: "Details", fontSize: 20),
            const SizedBox(width: 15),
            ClockAndDuration(duration: "$duration min", textColor: Colors.white, svgColor: Colors.white),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          desc,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class RecipeDetailIngredients extends StatelessWidget {
  const RecipeDetailIngredients({super.key, required this.ingredients});

  final List<Map<String, dynamic>> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RecipeText(text: "Ingredients", fontSize: 20),
        const SizedBox(height: 24),
        for (Map<String, dynamic> ingredient in ingredients) RecipeDetailIngredientItem(ingredient: ingredient),
      ],
    );
  }
}

class RecipeDetailIngredientItem extends StatelessWidget {
  final Map<String, dynamic> ingredient;

  const RecipeDetailIngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "•",
          style: TextStyle(
            color: AppConstants.mainColor,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ingredient['amount'] != null)
                Text(
                  ingredient['amount'] + " ", // amount va ingredient yopishib qolmasligi uchun.
                  style: TextStyle(
                    fontSize: 12 * Screen.wratio,
                    color: AppConstants.mainColor,
                  ),
                ),

              Text(
                ingredient['ingredient'],
                style: TextStyle(
                  fontSize: 12 * Screen.wratio,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
