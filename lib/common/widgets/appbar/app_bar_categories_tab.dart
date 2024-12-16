import 'package:Recipes/constants.dart';
import 'package:Recipes/recipes/data/models/category.dart';
import 'package:flutter/material.dart';

import 'app_bar_category_item.dart';

class AppBarCategoriesTab extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCategoriesTab({super.key});

  static final List<Map<String, dynamic>> items = [
    {"id": 1, "title": "Seafood", "image": "assets/images/Breakfast.png", "main": true},
    {"id": 2, "title": "Breakfast", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 3, "title": "Lunch", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 4, "title": "Dinner", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 5, "title": "Vegan", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 6, "title": "Dessert", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 7, "title": "Drinks", "image": "assets/images/Breakfast.png", "main": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screen.padding36),
      height: 40,
      child: ListView.separated(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AppBarCategoryItem(
            category: CategoryModel.fromJson(items[index]),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 30),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
