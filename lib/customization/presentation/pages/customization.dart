import 'package:Recipes/common/widgets/bottom_nav_bar.dart';
import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/customization/presentation/widgets/allergic.dart';
import 'package:Recipes/customization/presentation/widgets/cooking_level.dart';
import 'package:Recipes/customization/presentation/widgets/preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomizationScreen extends StatefulWidget {
  const CustomizationScreen({super.key});

  @override
  State<CustomizationScreen> createState() => _CustomizationScreenState();
}

class _CustomizationScreenState extends State<CustomizationScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  final List<Widget> items = [
    const CookingLevel(),
    const Preferences(),
    const Allergic(),
  ];

  void backArrowCallback() {
    currentIndex == 0
        ? context.go('/')
        : controller.previousPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
  }

  void nextPage() {
    controller.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: backArrowCallback,
          icon: SvgPicture.asset("assets/icons/back-arrow.svg"),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: const [CookingLevel(), Preferences(), Allergic()],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 230,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavBarShadow(),
          ),
          buttonsAtTheBottom(),
        ],
      ),
    );
  }

  Widget buttonsAtTheBottom() {
    Widget continueButton = RecipeButton(
      title: "Continue",
      fontSize: 20,
      width: 162,
      height: 45,
      foreground: Colors.white,
      background: AppConstants.mainColor,
      callback: nextPage,
    );

    Widget skipButton = RecipeButton(
      title: "Skip",
      fontSize: 20,
      width: 162 * Screen.wratio,
      height: 45,
      foreground: AppConstants.mainColor,
      background: AppConstants.pink,
      callback: nextPage,
    );

    return Positioned(
      bottom: 48,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: currentIndex != 0 && currentIndex != items.length - 1 ? [skipButton, continueButton] : [continueButton],
      ),
    );
  }
}
