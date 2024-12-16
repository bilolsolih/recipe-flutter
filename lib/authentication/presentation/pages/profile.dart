import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_picture_picker.dart';
import '../widgets/text_input_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const Text(
                "Profile",
                style: TextStyle(
                  color: AppConstants.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 54),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Complete Your Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Lorem ipsum dolor sit amet pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar diam.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  const ProfilePicturePicker(),
                  const SizedBox(height: 14),
                  TextInputField(
                    label: "Full Name",
                    placeholder: "Abdulloh Abdurahmonov",
                    controller: fullNameController,
                    isPassword: false,
                  ),
                  const SizedBox(height: 14),
                  TextInputField(
                    label: "Gender",
                    placeholder: "Erkak",
                    controller: genderController,
                    isPassword: false,
                  ),
                  const SizedBox(height: 14),
                  TextInputField(
                    label: "Mobile Number",
                    placeholder: "+998 90 123 45 67",
                    controller: mobileNumberController,
                    isPassword: false,
                  ),
                  const SizedBox(height: 14),
                  TextInputField(
                    label: "Date Of Birth",
                    placeholder: "DD/MM/YYYY",
                    controller: dateOfBirthController,
                    isPassword: false,
                  ),
                  const SizedBox(height: 100),
                  RecipeButton(
                    title: "Continue",
                    fontSize: 20,
                    width: 207,
                    height: 45,
                    foreground: Colors.white,
                    background: AppConstants.mainColor,
                    callback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
