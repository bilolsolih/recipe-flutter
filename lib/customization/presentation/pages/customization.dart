import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/customization/presentation/widgets/allergic.dart';
import 'package:Recipes/customization/presentation/widgets/cooking_level.dart';
import 'package:Recipes/customization/presentation/widgets/preferences.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomizationScreen extends StatefulWidget {
  const CustomizationScreen({super.key});

  @override
  State<CustomizationScreen> createState() => _CustomizationScreenState();
}

class _CustomizationScreenState extends State<CustomizationScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  final List<Widget> items = [const CookingLevel(), const Preferences(), const Allergic()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [],
          ),
          PageView.builder(
            controller: controller,
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return items[index];
            },
          ),
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              onPressed: () {
                currentIndex == 0
                    ? context.go('/')
                    : controller.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
              },
              icon: const Image(
                image: AssetImage("assets/icons/arrow.png"),
                width: 30,
                height: 14,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 64,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 230,
                height: 12,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 127,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          buttonsAtTheBottom(),
        ],
      ),
    );
  }

  void nextPage() {
    controller.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  Widget buttonsAtTheBottom() {
    if (currentIndex != 0 && currentIndex != items.length - 1) {
      return Positioned(
        bottom: 48,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RecipeButton(
              title: "Skip",
              width: 162,
              height: 45,
              foreground: AppConstants.pinkSub,
              background: AppConstants.pink,
              callback: nextPage, // TODO: must skip the customization, instead of just moving to the next page.
            ),
            RecipeButton(
              title: "Continue",
              width: 162,
              height: 45,
              foreground: Colors.white,
              background: AppConstants.mainColor,
              callback: nextPage,
            ),
          ],
        ),
      );
    } else {
      return Positioned(
        bottom: 48,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RecipeButton(
              title: "Continue",
              width: 162,
              height: 45,
              foreground: Colors.white,
              background: AppConstants.mainColor,
              callback: nextPage,
            ),
          ],
        ),
      );
    }
  }
}
