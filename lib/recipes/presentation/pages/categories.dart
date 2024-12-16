import 'package:Recipes/common/widgets/bottom_nav_bar.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/category.dart';
import '../../../common/widgets/app_bar_icon_button.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static final List<Map<String, dynamic>> items = [
    {"id": 1, "title": "Seafood", "image": "assets/images/Seafood.png", "main": true},
    {"id": 2, "title": "Breakfast", "image": "assets/images/Breakfast.png", "main": false},
    {"id": 3, "title": "Lunch", "image": "assets/images/Lunch.png", "main": false},
    {"id": 4, "title": "Dinner", "image": "assets/images/Dinner.png", "main": false},
    {"id": 5, "title": "Vegan", "image": "assets/images/Vegan.png", "main": false},
    {"id": 6, "title": "Dessert", "image": "assets/images/Dessert.png", "main": false},
    {"id": 7, "title": "Drinks", "image": "assets/images/Drinks.png", "main": false},
  ];

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
            children: [
              CategoryItem(
                item: CategoryModel.fromJson(items[0]),
                width: 356.0,
                height: 148.17,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                padding: EdgeInsets.fromLTRB(Screen.padding36, 14, Screen.padding36, 100),
                itemCount: items.length - 1,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    item: CategoryModel.fromJson(items[index + 1]),
                    width: 159.0,
                    height: 145.0,
                  );
                },
              ),
            ],
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

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.item, required this.width, required this.height});

  final CategoryModel item;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage(item.image),
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            item.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}