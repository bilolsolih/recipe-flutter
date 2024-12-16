import 'package:Recipes/common/widgets/image_with_border_radius.dart';
import 'package:Recipes/common/widgets/recipe_description.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/recipes/presentation/widgets/your_recipe_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/recipe.dart';

class TrendingRecipeListItem extends StatelessWidget {
  const TrendingRecipeListItem({super.key, required this.item});

  final RecipeListModel item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 360,
        height: 150,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 210,
                height: 122,
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppConstants.pinkSub, width: 1),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeText(text: item.title, fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
                    RecipeDescription(desc: item.desc, fontColor: Colors.black),
                    ByChefText(text: "By Chef ${item.chefFullName}"),
                    TrendingRecipeStatsRow(duration: item.duration.toString(), number: item.rating),
                  ],
                ),
              ),
            ),
            ImageWithBorderRadius(image: item.image, width: 151, height: 150),
          ],
        ),
      ),
    );
  }
}

class TrendingRecipeStatsRow extends StatelessWidget {
  const TrendingRecipeStatsRow({super.key, required this.duration, required this.number});

  final String duration;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClockAndDuration(duration: duration),
        NumberAndStar(number: number),
      ],
    );
  }
}

class ByChefText extends StatelessWidget {
  const ByChefText({super.key, required this.text, this.fontSize = 12});

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppConstants.pinkSub,
        fontSize: fontSize,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
