import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/common/widgets/app_bar_detail.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';
import '../widgets/recipe_detail_body.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  final RecipeDetailModel recipe = const RecipeDetailModel(
    title: "Salami and cheese pizza",
    image: "assets/images/trending/salami_pizza.png",
    desc: "This is a quick overview of the ingredients you’ll need for this Salami Pizza recipe."
        "Specific measurements and full recipe instructions are in the printable recipe card below.",
    chefFullName: "John Doe",
    chefUsername: "@John_Doe",
    chefImage: "assets/images/chefs/joseph.png",
    duration: 30,
    difficulty: "Easy",
    rating: 5,
    reviews: 28,
    ingredients: [
      {"amount": "1", "ingredient": "pizza dough (store-bought or homemade)"},
      {"amount": "1/2 cup", "ingredient": "pizza sauce"},
      {"amount": "1 1/2 cups", "ingredient": "shredded mozzarella cheese"},
      {"amount": "1/2 cup", "ingredient": "sliced salami"},
      {"amount": "1/4 cup", "ingredient": "sliced black olives (optional)"},
      {"amount": "1/4 cup", "ingredient": "sliced red onion (optional)"},
      {"amount": "1/4 cup", "ingredient": "sliced mushrooms (optional)"},
      {"amount": null, "ingredient": "Fresh basil leaves for garnish (optional)"},
      {"amount": null, "ingredient": "Olive oil for brushing"},
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: RecipeAppBarDetail(title: recipe.title),
      body: RecipeDetailScreenBody(recipe: recipe),
    );
  }
}