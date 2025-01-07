import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingPageV2 extends StatelessWidget {
  const OnboardingPageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(37, 80, 37, 35.35),
      color: const Color(0xFF1C0F0D),
      child: Column(
        children: [
          const Image(
            image: AssetImage("assets/images/onboarding/Onboarding-3.png"),
            fit: BoxFit.contain,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Text(
            "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 28),
          RecipeButton(
            title: "I'm New",
            fontSize: 20,
            width: 207 * Screen.wratio,
            height: 45 * Screen.hratio,
            foreground: AppConstants.pinkSub,
            background: AppConstants.pink,
            callback: () => context.go('/signup'),
          ),
          const SizedBox(height: 20),
          RecipeButton(
            title: "I've Been Here",
            fontSize: 20,
            width: 207 * Screen.wratio,
            height: 45 * Screen.hratio,
            foreground: AppConstants.pinkSub,
            background: AppConstants.pink,
            callback: () => context.go('/login'),
          ),
        ],
      ),
    );
  }
}
