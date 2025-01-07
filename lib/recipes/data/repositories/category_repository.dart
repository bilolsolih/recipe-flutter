// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/category.dart';
//
// class CategoryRepository{
//   final Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.80:8000/api/v1'));
//
//   Future<List<CategoryModel>> fetchCategories() async {
//     var response = await dio.get('/categories/list');
//     List<dynamic> categoriesRaw = response.data;
//     if (response.statusCode == 200) {
//       return categoriesRaw.map((json) => CategoryModel.fromJson(json)).toList();
//     } else {
//       debugPrint("Error: ${response.data}");
//       return [];
//     }
//   }
// }
//
// final categoriesProvider = FutureProvider<List<CategoryModel>>((ref) async {
//   final repository = CategoryRepository();
//   return repository.fetchCategories();
// });

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import '../models/category.dart';

class CategoriesRepository {
  static final BaseOptions options = BaseOptions(baseUrl: 'http://10.10.0.9:8000/api/v1');
  final Dio dio = Dio(options);

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      var response = await dio.get('/categories/list');
      List<dynamic> categoriesRaw = response.data;
      return categoriesRaw.map((json) => CategoryModel.fromJson(json)).toList();
    } catch (e) {
      debugPrint("Error: $e");
      return [];
    }
  }
}


