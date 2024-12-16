import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/common/widgets/app_bar_main.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/trending/trending_recipe.dart';
import '../widgets/trending/trending_recipes_list.dart';

class TrendingRecipesScreen extends StatelessWidget {
  const TrendingRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: const RecipeAppBarMain(title: "Trending Recipes"),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Screen.padding36, vertical: 10),
            height: 241 * Screen.hratio,
            decoration: BoxDecoration(color: AppConstants.mainColor, borderRadius: BorderRadius.circular(20)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeText(text: "Most viewed today", color: Colors.white),
                SizedBox(height: 9),
                TrendingRecipeMain(fontColor: Colors.black, backgroundColor: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Screen.padding36),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "See All",
                style: TextStyle(
                    color: AppConstants.mainColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline,
                    decorationColor: AppConstants.mainColor),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: TrendingRecipesList(),
          ),
        ],
      ),
    );

  }
}
