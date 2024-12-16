import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/customization/data/models/grid_item.dart';
import 'package:flutter/material.dart';

import 'preferences_item.dart';
import 'intro_text.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  static final List<Map<String, dynamic>> items = [
    {"id": 1, "title": "Salad", "image": "assets/images/cuisines/salad.png"},
    {"id": 2, "title": "Soup", "image": "assets/images/cuisines/soup.png"},
    {"id": 3, "title": "Eggs", "image": "assets/images/cuisines/eggs.png"},
    {"id": 4, "title": "Seafood", "image": "assets/images/cuisines/seafood.png"},
    {"id": 5, "title": "Chicken", "image": "assets/images/cuisines/chicken.png"},
    {"id": 6, "title": "Meat", "image": "assets/images/cuisines/meat.png"},
    {"id": 7, "title": "Burger", "image": "assets/images/cuisines/burger.png"},
    {"id": 8, "title": "Pizza", "image": "assets/images/cuisines/pizza.png"},
    {"id": 9, "title": "Sushi", "image": "assets/images/cuisines/sushi.png"},
    {"id": 10, "title": "Rice", "image": "assets/images/cuisines/rice.png"},
    {"id": 11, "title": "Dessert", "image": "assets/images/cuisines/dessert.png"},
    {"id": 12, "title": "Bread", "image": "assets/images/cuisines/bread.png"},
    {"id": 1, "title": "Salad", "image": "assets/images/cuisines/salad.png"},
    {"id": 2, "title": "Soup", "image": "assets/images/cuisines/soup.png"},
    {"id": 3, "title": "Eggs", "image": "assets/images/cuisines/eggs.png"},
    {"id": 4, "title": "Seafood", "image": "assets/images/cuisines/seafood.png"},
    {"id": 5, "title": "Chicken", "image": "assets/images/cuisines/chicken.png"},
    {"id": 6, "title": "Meat", "image": "assets/images/cuisines/meat.png"},
    {"id": 7, "title": "Burger", "image": "assets/images/cuisines/burger.png"},
    {"id": 8, "title": "Pizza", "image": "assets/images/cuisines/pizza.png"},
    {"id": 9, "title": "Sushi", "image": "assets/images/cuisines/sushi.png"},
    {"id": 10, "title": "Rice", "image": "assets/images/cuisines/rice.png"},
    {"id": 11, "title": "Dessert", "image": "assets/images/cuisines/dessert.png"},
    {"id": 12, "title": "Bread", "image": "assets/images/cuisines/bread.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 100),
            const IntroText(
              title: "Select your cuisines preferences",
              desc: "Please select your cuisines preferences for a better recommendations or you can skip it.",
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 100),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 125,
                ),
                itemBuilder: (context, index) {
                  return PreferencesItem(
                    item: CustomizationGridItem.fromJson(items[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
