import 'package:Recipes/authentication/presentation/pages/login.dart';
import 'package:Recipes/authentication/presentation/pages/signup.dart';
import 'package:Recipes/common/home.dart';
import 'package:Recipes/constants.dart';
import 'package:Recipes/recipes/presentation/pages/categories.dart';
import 'package:Recipes/recipes/presentation/pages/category_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'recipes/data/models/category.dart';
import 'recipes/data/repositories/category_repository.dart';

final GoRouter router = GoRouter(
  initialLocation: '/categories-detail',
  routes: [
    GoRoute(
      path: '/categories',
      builder: (context, state) => const CategoriesScreen(),
    ),
    GoRoute(
      path: '/categories-detail',
      builder: (context, state) => const CategoryDetail(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    MultiProvider(
      providers: [
        FutureProvider<List<CategoryModel>>(
          create: (BuildContext context) async {
            final repository = CategoriesRepository();
            return repository.fetchCategories();
          },
          initialData: [],
        ),
      ],
      child: const RecipeApp(),
    ),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    Screen.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppConstants.appThemeData,
      routerConfig: router,
    );
  }
}
