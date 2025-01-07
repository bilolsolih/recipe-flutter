import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_bar_icon_button.dart';

class RecipeAppBarChefProfile extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const RecipeAppBarChefProfile({super.key, required this.title});

  @override
  Size get preferredSize => const Size(double.infinity, 60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.only(left: Screen.appBarPadding),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            "assets/icons/back-arrow.svg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: RecipeText(text: title, fontSize: 20),
      ),
      titleSpacing: 15,
      actions: [
        AppBarIconButton(
          image: "assets/icons/share.svg",
          foreground: AppConstants.pinkSub,
          background: AppConstants.pink,
          callback: () {},
        ),
        const SizedBox(width: 5),
        AppBarIconButton(
          image: "assets/icons/share.svg",
          foreground: AppConstants.pinkSub,
          background: AppConstants.pink,
          callback: () {},
        ),
        SizedBox(width: Screen.appBarPadding)
      ],
    );
  }
}
