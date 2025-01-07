import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/common/widgets/number_and_star.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/chef.dart';
import 'top_chef_item_image.dart';

class TopChefItem extends StatelessWidget {
  const TopChefItem({super.key, required this.chef});

  final ChefModelList chef;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 217 * Screen.hratio,
      width: 170 * Screen.wratio,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 160 * Screen.wratio,
              height: 76 * Screen.hratio,
              padding: EdgeInsets.symmetric(horizontal: 10 * Screen.wratio, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppConstants.pinkSub, width: 1),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RecipeText(
                        text: chef.fullName,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 2),
                      RecipeText(
                        text: chef.username,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const NumberAndStar(number: 6687),
                      Row(
                        children: [
                          RecipeButton(
                            title: chef.following ? "Following" : "Follow",
                            fontSize: 8 * Screen.wratio,
                            width: 44 * Screen.wratio,
                            height: 14 * Screen.hratio,
                            foreground: chef.following ? Colors.white : AppConstants.pinkSub,
                            background: chef.following ? AppConstants.mainColor : AppConstants.pink,
                            callback: () {},
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 14 * Screen.wratio,
                            height: 14 * Screen.hratio,
                            decoration: BoxDecoration(
                              color: AppConstants.mainColor,
                              borderRadius: BorderRadius.circular(5.64),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/share.svg",
                                width: 7,
                                height: 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          TopChefItemImage(image: chef.image),
        ],
      ),
    );
  }
}
