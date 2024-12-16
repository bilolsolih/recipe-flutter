import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import 'app_bar_icon_button.dart';
import 'appbar/app_bar_categories_tab.dart';
import 'appbar/app_bar_title.dart';

class RecipeAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppBarHome({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 112);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: const AppBarTitle(name: "Bilol", subtitle: "What are you cooking today"),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBarIconButton(image: "assets/icons/notification.svg", callback: () {}),
            const SizedBox(width: 5),
            AppBarIconButton(image: "assets/icons/search.svg", callback: () {}),
          ],
        ),
        SizedBox(width: Screen.padding36),
      ],
      bottom: const AppBarCategoriesTab(),
    );
  }
}
