import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/recipes/presentation/widgets/category_detail_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/category.dart';
import '../widgets/categories/categories_screen_body.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: const CategoryDetailAppBar(title: "Breakfast"),
      body: CategoryDetailScreenBody(),
    );
  }
}

class CategoryDetailScreenBody extends StatelessWidget {
  const CategoryDetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
