import 'package:Recipes/common/home.dart';
import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    Screen.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppConstants.appThemeData,
      home: const HomeScreen(),
    );
  }
}
