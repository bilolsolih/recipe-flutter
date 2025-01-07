import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_bar_icon_button.dart';

class RecipeAppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const RecipeAppBarMain({super.key, required this.title});
  @override
  Size get preferredSize => const Size(double.infinity, 71);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      toolbarHeight: 71,
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
        AppBarIconButton(image: "assets/icons/notification.svg", background: AppConstants.pink, callback: () {}),
        const SizedBox(width: 5),
        AppBarIconButton(image: "assets/icons/search.svg", background: AppConstants.pink, callback: () {}),
        SizedBox(width: Screen.padding36),
      ],
    );
  }
}
