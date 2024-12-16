import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'top_chef_section.dart';

class TopChefsScreenBody extends StatelessWidget {
  const TopChefsScreenBody({super.key});

  static final List<Map<String, dynamic>> mostViewed = [
    {"fullName": "Neil Trump", "username": "@neil_trump", "image": "assets/images/chefs/neil.png", "likes": 6687, "following": true},
    {"fullName": "Jessica Davis", "username": "@jessi_davis", "image": "assets/images/chefs/jessica.png", "likes": 5687, "following": false},
  ];

  static final List<Map<String, dynamic>> mostLiked = [
    {"fullName": "Daniel Martinez", "username": "@dan-chef", "image": "assets/images/chefs/daniel.png", "likes": 6687, "following": true},
    {"fullName": "Aria Chang", "username": "@ariachang-chef", "image": "assets/images/chefs/aria.png", "likes": 5687, "following": false},
  ];

  static final List<Map<String, dynamic>> newChefs = [
    {"fullName": "Lily Chen", "username": "@lily.chen", "image": "assets/images/chefs/lily.png", "likes": 6687, "following": true},
    {"fullName": "Edward Jones", "username": "@edjones-chef", "image": "assets/images/chefs/edward.png", "likes": 5687, "following": true},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: [
        TopChefSection(
          title: "Most Viewed Chefs",
          fontColor: Colors.white,
          backgroundColor: AppConstants.mainColor,
          items: mostViewed,
        ),
        const SizedBox(height: 15),
        TopChefSection(
          title: "Most Liked Chefs",
          fontColor: AppConstants.mainColor,
          backgroundColor: Colors.transparent,
          items: mostLiked,
        ),
        const SizedBox(height: 15),
        TopChefSection(
          title: "New Chefs",
          fontColor: AppConstants.mainColor,
          backgroundColor: Colors.transparent,
          items: newChefs,
        )
      ],
    );
  }
}
