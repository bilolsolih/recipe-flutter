
import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/text_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController fullNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController mobileNumberController = TextEditingController();

  final TextEditingController dateOfBirthController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();

  final Dio dio = Dio(
    BaseOptions(baseUrl: 'http://192.168.1.80:8000/api/v1', headers: {"Content-Type": "application/json"}),
  );

  Future signUpCallback() async {
    var response = await dio.post(
      '/auth/register',
      data: {
        "username": usernameController.text,
        "fullName": fullNameController.text,
        "email": emailController.text,
        "phoneNumber": mobileNumberController.text,
        "birthDate": dateOfBirthController.text,
        "password": passwordController.text
      },
    );
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 201) {
      context.go('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Something went wrong... ${response.data}"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        key: widget.key,
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
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
            const SizedBox(height: 40),
            TextInputField(label: "Username", placeholder: "@abdulloh_chef", controller: usernameController),
            const SizedBox(height: 9),
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
                  onPressed: () => context.go('/login'),
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
      ),
    );
  }
}
