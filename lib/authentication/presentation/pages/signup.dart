import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          const Text(
            "Sign Up",
            style: TextStyle(
              color: AppConstants.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 106),
          TextInputField(label: "Full Name", placeholder: "Abdulloh Abdurahmonov", controller: fullNameController),
          const SizedBox(height: 9),
          TextInputField(label: "Email", placeholder: "example@example.com", controller: emailController),
          const SizedBox(height: 9),
          TextInputField(label: "Mobile Number", placeholder: "+998 90 123 45 67", controller: mobileNumberController),
          const SizedBox(height: 9),
          TextInputField(label: "Date Of Birth", placeholder: "DD/MM/YYYY", controller: dateOfBirthController),
          const SizedBox(height: 9),
          TextInputField(label: "Password", placeholder: "••••••••", controller: passwordController, isPassword: true),
          const SizedBox(height: 9),
          TextInputField(label: "Confirm Password", placeholder: "••••••••", controller: confirmPasswordController, isPassword: true),
          const SizedBox(height: 48),
          TextButton(
            onPressed: () {},
            child: const Text(
              "By continuing, you agree to\nTerms of Use and Privacy Policy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 12),
          RecipeButton(
            title: "Sign Up",
            fontSize: 20,
            width: 194,
            height: 45,
            foreground: Colors.white,
            background: AppConstants.mainColor,
            callback: signUpCallback,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    color: AppConstants.mainColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void signUpCallback() {}
}
