import 'package:Recipes/customization/data/models/cuisine_model.dart';
import 'package:Recipes/customization/data/models/grid_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'preferences_item.dart';
import 'intro_text.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.80:8000/api/v1'));

  Future<List<CuisineModel>> downloadCuisines() async {
    var response = await dio.get('/cuisines/list');
    if (response.statusCode == 200) {
      List<dynamic> cuisinesRaw = response.data;
      return cuisinesRaw.map((json) => CuisineModel.fromJson(json)).toList();
    } else {
      throw Exception("Something went wrong: ${response.data}\n${response.realUri}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const IntroText(
          title: "Select your cuisines preferences",
          desc: "Please select your cuisines preferences for a better recommendations or you can skip it.",
        ),
        const SizedBox(height: 20),
        Expanded(
          child: FutureBuilder(
            future: downloadCuisines(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text(
                  "Something went wrong: ${snapshot.error}",
                  style: const TextStyle(color: Colors.white),
                );
              } else if (snapshot.hasData) {
                return GridView.builder(
                  itemCount: snapshot.data!.length,
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 100),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 125,
                  ),
                  itemBuilder: (context, index) {
                    return PreferencesItem(
                      item: snapshot.data![index],
                    );
                  },
                );
              } else {
                return const Text(
                  "No idea...",
                  style: TextStyle(color: Colors.white),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
