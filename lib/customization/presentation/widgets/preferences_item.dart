import 'package:Recipes/customization/data/models/cuisine_model.dart';
import 'package:flutter/material.dart';

class PreferencesItem extends StatelessWidget {
  const PreferencesItem({super.key, required this.item});

  final CuisineModel item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: NetworkImage(item.image),
              width: 98,
              height: 98,
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
