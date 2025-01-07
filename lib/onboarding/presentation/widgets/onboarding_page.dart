import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.title, required this.subtitle, required this.image});

  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(image),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 475,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF1C0F0D).withOpacity(1.0),
                  const Color(0xFF1C0F0D).withOpacity(1.0),
                  const Color(0xFF1C0F0D).withOpacity(0.6),
                  const Color(0xFF1C0F0D).withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          top: 104,
          left: 30,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
