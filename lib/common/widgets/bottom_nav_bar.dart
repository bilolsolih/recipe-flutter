import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavBarShadow(),
        ),
        Positioned(
          bottom: 35,
          child: BottomNavBarVanilla(),
        ),
      ],
    );
  }
}

class BottomNavBarVanilla extends StatelessWidget {
  const BottomNavBarVanilla({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281,
      height: 56,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.circular(33),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarItem(image: "assets/icons/home.svg", destination: '/home'),
          BottomNavBarItem(image: "assets/icons/community.svg", destination: '/community'),
          BottomNavBarItem(image: "assets/icons/categories.svg", destination: '/categories'),
          BottomNavBarItem(image: "assets/icons/profile.svg", destination: '/profile'),
        ],
      ),
    );
  }
}

class BottomNavBarShadow extends StatelessWidget {
  const BottomNavBarShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(1), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.image,
    required this.destination,
  });

  final String image, destination;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.go(destination),
      icon: SvgPicture.asset(
        image,
        width: 27,
        height: 27,
        fit: BoxFit.cover,
      ),
    );
  }
}
