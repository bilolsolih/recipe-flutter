import 'package:Recipes/recipes/data/models/category.dart';
import 'package:flutter/material.dart';


class AppBarCategoryItem extends StatelessWidget {
  const AppBarCategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.all(0),
        ),
        child: Text(
          category.title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}