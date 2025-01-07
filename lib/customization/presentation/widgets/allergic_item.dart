import 'package:Recipes/constants.dart';
import 'package:Recipes/customization/data/models/allergic_model.dart';
import 'package:flutter/material.dart';

class AllergicItem extends StatelessWidget {
  const AllergicItem({super.key, required this.item});

  final AllergicIngredientModel item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppConstants.pink, width: 1.5),
              borderRadius: BorderRadius.circular(13.5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.5),
              child: Image(
                image: NetworkImage(item.image),
                width: 112,
                height: 112,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            item.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
