import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../../data/models/chef.dart';
import 'top_chef_item.dart';

class TopChefSection extends StatelessWidget {
  const TopChefSection({
    super.key,
    required this.title,
    required this.fontColor,
    required this.backgroundColor,
    required this.items,
  });

  final String title;
  final Color fontColor, backgroundColor;
  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screen.padding36, vertical: 10),
      height: 285 * Screen.hratio,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeText(text: title, color: fontColor),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var chef in items)
                TopChefItem(
                  chef: ChefModelList.fromJson(chef),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
