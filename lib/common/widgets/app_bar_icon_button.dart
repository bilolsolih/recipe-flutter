import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    super.key,
    required this.image,
    required this.callback,
    this.foreground = AppConstants.mainColor,
    this.background = AppConstants.pink,
  });

  final String image;
  final VoidCallback callback;
  final Color foreground, background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 28,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: background,
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.contain,
          width: 12,
          height: 18,
          clipBehavior: Clip.none,
          colorFilter: ColorFilter.mode(foreground, BlendMode.srcIn),
        ),
      ),
    );
  }
}
