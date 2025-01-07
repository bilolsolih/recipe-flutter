import 'package:Recipes/authentication/data/repositories/auth_repository.dart';
import 'package:Recipes/authentication/presentation/widgets/text_input_field.dart';
import 'package:Recipes/common/widgets/button.dart';
import 'package:Recipes/common/widgets/text.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/utils/api_client.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthRepository repo = AuthRepository(ApiClient().dio);

  Future loginCallback() async {
    context.go('/home');
    // await repo.login(emailController.text, passwordController.text);
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text("Logged in Successfully"),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const RecipeText(text: "Login", fontSize: 20, fontWeight: FontWeight.bold),
            const SizedBox(height: 40),
            TextInputField(
              label: "Login",
              placeholder: "username or email",
              controller: emailController,
              isPassword: false,
            ),
            const SizedBox(height: 20),
            TextInputField(
              label: "Password",
              placeholder: "••••••••",
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 89),
            RecipeButton(
              title: "Log in",
              fontSize: 20,
              width: 207,
              height: 45,
              foreground: AppConstants.pinkSub,
              background: AppConstants.pink,
              callback: loginCallback,
            ),
            const SizedBox(height: 27),
            RecipeButton(
              title: "Sign Up",
              fontSize: 20,
              width: 207,
              height: 45,
              foreground: AppConstants.pinkSub,
              background: AppConstants.pink,
              callback: () => context.go('/signup'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              "or sign up with",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(icon: Icons.camera_alt_rounded),
                SizedBox(width: 20),
                SocialIcon(icon: Icons.g_translate),
                SizedBox(width: 20),
                SocialIcon(icon: Icons.facebook),
                SizedBox(width: 20),
                SocialIcon(icon: Icons.whatshot),
              ],
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
