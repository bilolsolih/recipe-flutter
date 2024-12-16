import 'package:flutter/material.dart';

import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_page_v2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Map<String, String>> items = [];
  PageController controller = PageController();
  int currentIndex = 0;

  void continueButton() {
    setState(() {
      controller.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeOutBack);
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              OnboardingPage(
                title: "Get inspired",
                subtitle: "Get inspired with our daily recipe recommendations.",
                image: "assets/images/onboarding/Onboarding-1.jpg",
                callback: continueButton,
              ),
              OnboardingPage(
                title: "Get an increase your skills",
                subtitle: "Learn essential cooking techniques at your own pace.",
                image: "assets/images/onboarding/Onboarding-2.jpg",
                callback: continueButton,
              ),
              const OnboardingPageV2(),
            ],
          ),
          createBackArrow(currentIndex),
        ],
      ),
    );
  }

  Widget createBackArrow(int index) {
    if (index != 0) {
      return Positioned(
        top: 30,
        left: 10,
        child: IconButton(
          onPressed: () {
            controller.previousPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutBack,
            );
          },
          icon: const Image(
            image: AssetImage("assets/icons/arrow.png"),
            width: 30,
            height: 14,
            fit: BoxFit.contain,
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}

/*


*/
