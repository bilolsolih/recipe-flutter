import 'package:flutter/material.dart';

import '../../../data/models/recipe.dart';
import 'trending_recipe_item.dart';

class TrendingRecipesList extends StatelessWidget {
  const TrendingRecipesList({super.key});

  static final List<Map<String, dynamic>> items = [
    {
      "title": "Chicken Curry",
      "image": "assets/images/chicken_curry.png",
      "desc": "Savor the aromatic Chicken Curry—a rich blend of spices...",
      "chefFullName": "Josh Ryan",
      "duration": 45,
      "difficulty": "Easy",
      "rating": 4,
    },
    {
      "title": "Chicken Burger",
      "image": "assets/images/your_recipes/chicken_burger.png",
      "desc": "Indulge in a flavorful Chicken Burger: seasoned chicken...",
      "chefFullName": "Andrew",
      "duration": 45,
      "difficulty": "Medium",
      "rating": 5,
    },
    {
      "title": "Tiramisu",
      "image": "assets/images/your_recipes/tiramisu.png",
      "desc": "Mix the flours, salt, cinnamon and baking powder...",
      "chefFullName": "Jessica",
      "duration": 45,
      "difficulty": "Hard",
      "rating": 5,
    },
    {
      "title": "Tofu Sandwich",
      "image": "assets/images/tofu_sandwich.png",
      "desc": "Mix the flours, salt, cinnamon and baking powder...",
      "chefFullName": "Bilol Solih",
      "duration": 45,
      "difficulty": "Easy",
      "rating": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      padding: const EdgeInsets.only(bottom: 100),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemBuilder: (context, index) {
        return TrendingRecipeListItem(item: RecipeListModel.fromJson(items[index]));
      },
    );
  }
}
