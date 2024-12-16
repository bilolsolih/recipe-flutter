import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';
import 'recipe/detail_info_and_video.dart';
import 'recipe/recipe_detail_widgets.dart';
import 'recipe_detail_steps.dart';

class RecipeDetailScreenBody extends StatelessWidget {
  final RecipeDetailModel recipe;

  const RecipeDetailScreenBody({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 37.0 * Screen.wratio),
      children: [
        RecipeVideoInstructions(title: recipe.title, duration: recipe.duration, reviews: recipe.reviews),
        const SizedBox(height: 20),
        RecipeDetailChefInfo(image: recipe.chefImage, username: recipe.chefUsername, name: recipe.chefFullName),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 2,
          color: AppConstants.pinkSub,
        ),
        const SizedBox(height: 20),
        RecipeDetailDetailsAndDescription(duration: recipe.duration, desc: recipe.desc),
        const SizedBox(height: 30),
        RecipeDetailIngredients(ingredients: recipe.ingredients),
        const SizedBox(height: 30),
        const RecipeDetailSteps(stepsNumber: 6),
        const SizedBox(height: 100),
      ],
    );
  }
}
