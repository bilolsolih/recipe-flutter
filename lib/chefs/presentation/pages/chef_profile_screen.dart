import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/common/widgets/app_bar_chef_profile.dart';
import 'package:flutter/material.dart';

class ChefProfileScreen extends StatelessWidget {
  const ChefProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      appBar: RecipeAppBarChefProfile(title: "@Neil_trump"),
      body: ChefDetails(),
    );
  }
}

class ChefDetails extends StatelessWidget {
  const ChefDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(51),
          child: const Image(
            image: AssetImage("assets/images/chefs/neil.png"),
            width: 102,
            height: 97,
          ),
        )
      ],
    );
  }
}