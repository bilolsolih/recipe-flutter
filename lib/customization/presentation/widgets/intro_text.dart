import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key, required this.title, required this.desc});

  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 356,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}