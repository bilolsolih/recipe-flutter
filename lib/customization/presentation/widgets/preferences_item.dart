import 'package:flutter/material.dart';

import '../../data/models/grid_item.dart';

class PreferencesItem extends StatelessWidget {
  const PreferencesItem({super.key, required this.item});

  final CustomizationGridItem item;

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
