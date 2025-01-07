import 'package:Recipes/common/base_screen.dart';
import 'package:Recipes/common/widgets/app_bar_main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/models/category.dart';
import '../widgets/categories/categories_screen_body.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final Dio dio = Dio(BaseOptions(baseUrl: 'http://10.10.0.9:8000/api/v1'));

  Future<List<CategoryModel>> downloadCategories() async {
    var response = await dio.get('/categories/list');
    List<dynamic> categoriesRaw = response.data;
    if (response.statusCode == 200) {
      return categoriesRaw.map((json) => CategoryModel.fromJson(json)).toList();
    } else {
      debugPrint("Error: ${response.data}");
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: const RecipeAppBarMain(title: "Categories"),
      body: Consumer<List<CategoryModel>>(
        builder: (context, categories, something) {
          if (categories.isEmpty){
            return const Center(child: CircularProgressIndicator());
          }
          return CategoriesScreenBody(items: categories);
        },
      ),
    );
  }
}
