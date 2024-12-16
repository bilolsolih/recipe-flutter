import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'recipe/recipe_list_item.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Screen.padding36),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeText(text: "Recently Added"),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RecipeListItem(
                title: "Taco",
                desc: "Acidic and refreshing",
                duration: "30min",
                number: 4,
                image: "assets/images/recents/taco.png",
              ),
              RecipeListItem(
                title: "Lemonade",
                desc: "Acidic and refreshing",
                duration: "30min",
                number: 4,
                image: "assets/images/recents/lemonade.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
