import 'package:flutter/material.dart';

import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_page_v2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> items = [
    const OnboardingPage(
      title: "Get inspired",
      subtitle: "Get inspired with our daily recipe recommendations.",
      image: "assets/images/onboarding/Onboarding-1.jpg",
    ),
    const OnboardingPage(
      title: "Get an increase your skills",
      subtitle: "Learn essential cooking techniques at your own pace.",
      image: "assets/images/onboarding/Onboarding-2.jpg",
    ),
    const OnboardingPageV2(),
  ];
  PageController controller = PageController();
  int currentIndex = 0;

  void continueButton() {
    setState(() {
      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index){
              return items[index];
            },
          ),
          createBackArrow(currentIndex),
          createContinueButton(currentIndex),
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

  Widget createContinueButton(int index) {
    if (index != items.length - 1){
      return Positioned(
        bottom: 48,
        left: 0,
        right: 0,
        child: Center(
          child: ElevatedButton(
            onPressed: continueButton,
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFEC888D),
              backgroundColor: const Color(0xFFFFC6C9),
              minimumSize: const Size(207, 45),
            ),
            child: const Text("Continue"),
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
