import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_bar_icon_button.dart';

class RecipeAppBarDetail extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const RecipeAppBarDetail({super.key, required this.title});
  @override
  Size get preferredSize => const Size(double.infinity, 60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
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
        AppBarIconButton(image: "assets/icons/like.svg", background: AppConstants.mainColor, callback: () {}),
        const SizedBox(width: 5),
        AppBarIconButton(image: "assets/icons/share.svg", background: AppConstants.mainColor, callback: () {}),
        SizedBox(width: Screen.padding36),
      ],
    );
  }
}
