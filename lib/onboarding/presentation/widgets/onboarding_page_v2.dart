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
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.go('/customization');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFFEC888D),
                backgroundColor: const Color(0xFFFFC6C9),
                minimumSize: const Size(207, 45),
              ),
              child: const Text(
                "I'm New",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFFEC888D),
                backgroundColor: const Color(0xFFFFC6C9),
                minimumSize: const Size(207, 45),
              ),
              child: const Text(
                "I've Been Here",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
