import 'package:Recipes/common/widgets/bottom_nav_bar.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/common/widgets/app_bar_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: SvgPicture.asset(
            "assets/icons/back-arrow.svg",
            width: 30,
            height: 14,
            fit: BoxFit.cover,
          ),
        ),
        title: const RecipeText(text: "Categories", fontSize: 20),
        actions: [
          Row(
            children: [
              AppBarIconButton(image: "assets/icons/notification.svg", callback: () {}),
              const SizedBox(width: 5),
              AppBarIconButton(image: "assets/icons/search.svg", callback: () {}),
              SizedBox(width: Screen.padding36),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 126,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(1), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}