import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/customization/data/models/grid_item.dart';
import 'package:Recipes/customization/presentation/widgets/allergic_item.dart';
import 'package:flutter/material.dart';

import 'preferences_item.dart';
import 'intro_text.dart';

class Allergic extends StatelessWidget {
  const Allergic({super.key});

  static final List<Map<String, dynamic>> items = [
    {"id": 1, "title": "Banana", "image": "assets/images/allergic/banana.png"},
    {"id": 1, "title": "Meat", "image": "assets/images/allergic/meat.png"},
    {"id": 1, "title": "Kiwi", "image": "assets/images/allergic/kiwi.png"},
    {"id": 1, "title": "Almonds", "image": "assets/images/allergic/almonds.png"},
    {"id": 1, "title": "Milk", "image": "assets/images/allergic/milk.png"},
    {"id": 1, "title": "Eggs", "image": "assets/images/allergic/eggs.png"},
    {"id": 1, "title": "Peanuts", "image": "assets/images/allergic/peanuts.png"},
    {"id": 1, "title": "Wheat", "image": "assets/images/allergic/wheat.png"},
    {"id": 1, "title": "Shrimp", "image": "assets/images/allergic/shrimp.png"},
    {"id": 1, "title": "Tree Nuts", "image": "assets/images/allergic/tree_nuts.png"},
    {"id": 1, "title": "Shellfish", "image": "assets/images/allergic/shellfish.png"},
    {"id": 1, "title": "Fish", "image": "assets/images/allergic/fish.png"},
    {"id": 1, "title": "Sesame", "image": "assets/images/allergic/sesame.png"},
    {"id": 1, "title": "Soy", "image": "assets/images/allergic/soy.png"},
    {"id": 1, "title": "Mustard", "image": "assets/images/allergic/mustard.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 100),
            const IntroText(
              title: "Are you allergic to any of these?",
              desc: "Lorem ipsum dolor sit amet consectetur. Leo ornare ullamcorper viverra ultrices in.",
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 100),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 19,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 145,
                ),
                itemBuilder: (context, index) {
                  return AllergicItem(
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
