import 'package:Recipes/common/widgets/app_bar_icon_button.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/recipes/data/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CategoryDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CategoryDetailAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size(double.infinity, 90);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      toolbarHeight: 90,
      leading: Center(
        child: SvgPicture.asset(
          "assets/icons/back-arrow.svg",
          width: 30,
          height: 14,
          fit: BoxFit.cover,
        ),
      ),
      title: RecipeText(text: title, fontSize: 20),
      actions: [
        AppBarIconButton(
          image: "assets/icons/notification.svg",
          background: AppConstants.pink,
          callback: () {},
        ),
        const SizedBox(width: 5),
        AppBarIconButton(
          image: "assets/icons/search.svg",
          background: AppConstants.pink,
          callback: () {},
        ),
        SizedBox(width: Screen.padding36),
      ],
      bottom: const CategoryDetailAppBarBottom(),
    );
  }
}

class CategoryDetailAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const CategoryDetailAppBarBottom({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 30);

  @override
  Widget build(BuildContext context) {
    return Consumer<List<CategoryModel>>(
      builder: (context, categories, something) {
        if (categories.isEmpty) {
          return SizedBox(
            width: double.infinity,
            height: 30,
            child: ListView(),
          );
        }

        return SizedBox(
          width: double.infinity,
          height: 30,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return RecipeText(text: categories[index].title);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: categories.length,
          ),
        );
      },
    );
  }
}
