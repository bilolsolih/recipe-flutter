import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../../../data/models/category.dart';
import 'category_item.dart';

class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({
    super.key,
    required this.items,
  });

  final List<CategoryModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: [
        CategoryItem(
          item: items[0],
          width: 356.0,
          height: 148.17,
          reverse: true,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 39 * Screen.wratio,
            childAspectRatio: 159 / 178,
          ),
          padding: EdgeInsets.fromLTRB(Screen.padding36, 14, Screen.padding36, 0),
          itemCount: items.length - 1,
          itemBuilder: (context, index) {
            return CategoryItem(
              item: items[index + 1],
              width: 159.0,
              height: 145.0,
            );
          },
        ),
      ],
    );
  }
}
