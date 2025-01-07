import 'package:Recipes/chefs/presentation/widgets/top_chefs.dart';
import 'package:Recipes/common/widgets/app_bar_home.dart';
import 'package:Recipes/common/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../recipes/presentation/widgets/recently_added_recipes.dart';
import '../recipes/presentation/widgets/trending/trending_recipe.dart';
import '../recipes/presentation/widgets/your_recipes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      appBar: RecipeAppBarHome(),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: const [
        SizedBox(height: 20,),
        TrendingRecipes(),
        SizedBox(height: 20),
        YourRecipes(),
        SizedBox(height: 20),
        TopChefs(),
        SizedBox(height: 20),
        RecentlyAdded(),
      ],
    );
  }
}
