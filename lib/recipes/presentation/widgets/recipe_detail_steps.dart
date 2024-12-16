import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class RecipeDetailSteps extends StatelessWidget {
  const RecipeDetailSteps({super.key, required this.stepsNumber});

  final int stepsNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeText(text: "$stepsNumber Easy Steps", fontSize: 20),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 0,
          stepText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque aliquet augue. ",
        ),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 1,
          stepText: "Phasellus faucibus aliquam tincidunt. Ut et elementum quam. Proin mi felis, dignissim at elit id, ullamcorper mattis est.",
        ),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 2,
          stepText:
          "Nunc molestie orci in mauris pretium ullamcorper. Vivamus et gravida felis. Nam bibendum libero turpis, ut facilisis justo hendrerit in. ",
        ),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 3,
          stepText: "Donec euismod magna est, quis blandit leo eleifend vitae. Maecenas ac luctus tortor, vel condimentum enim.",
        ),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 4,
          stepText:
          "Morbi non commodo erat. Aliquam id massa aliquet, porttitor dui at, commodo mi. Aliquam et semper nisl. Morbi sit amet aliquet tellus.",
        ),
        const SizedBox(height: 11),
        const RecipeDetailStepItem(
          index: 5,
          stepText:
          "Nam varius, diam in finibus congue, turpis eros lacinia nulla, vitae rutrum dolor dui at elit. Vestibulum id viverra felis, non gravida odio.",
        ),
      ],
    );
  }
}

class RecipeDetailStepItem extends StatelessWidget {
  final String stepText;
  final int index;

  const RecipeDetailStepItem({super.key, required this.index, required this.stepText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 356 * Screen.wratio,
        minWidth: 356 * Screen.wratio,
        minHeight: 81 * Screen.hratio,
        maxHeight: double.infinity,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: index % 2 == 0 ? AppConstants.pinkSub : AppConstants.pink,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            "${index + 1}. $stepText",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12 * Screen.wratio,
            ),
          ),
        ),
      ),
    );
  }
}