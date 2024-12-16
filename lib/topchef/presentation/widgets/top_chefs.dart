import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'top_chef_item_home.dart';

class TopChefs extends StatelessWidget {
  const TopChefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screen.padding36),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeText(text: "Top Chef"),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopChefItemHome(name: "Joseph", image: "assets/images/chefs/joseph.png"),
              TopChefItemHome(name: "Andrew", image: "assets/images/chefs/andrew.png"),
              TopChefItemHome(name: "Emily", image: "assets/images/chefs/emily.png"),
              TopChefItemHome(name: "Jessica", image: "assets/images/chefs/jessica.png"),
            ],
          ),
        ],
      ),
    );
  }
}
