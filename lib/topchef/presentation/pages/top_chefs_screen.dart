import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/common/widgets/app_bar_main.dart';
import 'package:flutter/material.dart';

import '../widgets/top_chefs_screen_body.dart';

class TopChefsScreen extends StatelessWidget {
  const TopChefsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      appBar: RecipeAppBarMain(title: "Top Chef"),
      body: TopChefsScreenBody(),
    );
  }
}
