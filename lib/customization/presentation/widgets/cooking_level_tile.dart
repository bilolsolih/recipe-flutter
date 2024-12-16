import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';


class CookingLevelTile extends StatelessWidget {
  const CookingLevelTile({super.key, required this.title, required this.desc});

  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 356,
        height: 116,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppConstants.pink,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}