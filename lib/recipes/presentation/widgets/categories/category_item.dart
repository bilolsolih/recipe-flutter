import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/category.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.item,
    required this.width,
    required this.height,
    this.reverse = false,
  });

  final CategoryModel item;
  final double width, height;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.go('/categories-detail');
      },
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            reverse ? CategoryTitle(title: item.title) : CategoryImage(width: width, height: height, image: item.image),
            const SizedBox(height: 6),
            reverse ? CategoryImage(width: width, height: height, image: item.image) : CategoryTitle(title: item.title),
          ],
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 13.25,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CategoryImage extends StatelessWidget {
  const CategoryImage({
    super.key,
    required this.width,
    required this.height,
    required this.image,
  });

  final String image;

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image(
        image: NetworkImage(image),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}