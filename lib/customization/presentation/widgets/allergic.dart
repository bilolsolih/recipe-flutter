import 'package:Recipes/customization/data/models/allergic_model.dart';
import 'package:Recipes/customization/presentation/widgets/allergic_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'intro_text.dart';

class Allergic extends StatefulWidget {
  const Allergic({super.key});

  @override
  State<Allergic> createState() => _AllergicState();
}

class _AllergicState extends State<Allergic> {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.80:8000/api/v1'));

  Future<List<AllergicIngredientModel>> downloadAllergicIngredients() async {
    var response = await dio.get('/allergic/list');
    if (response.statusCode == 200) {
      List<dynamic> ingredientsRaw = response.data;
      return ingredientsRaw.map((json) => AllergicIngredientModel.fromJson(json)).toList();
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
          title: "Are you allergic to any of these?",
          desc: "Lorem ipsum dolor sit amet consectetur. Leo ornare ullamcorper viverra ultrices in.",
        ),
        const SizedBox(height: 20),
        Expanded(
          child: FutureBuilder(
            future: downloadAllergicIngredients(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text("Something went wrong: ${snapshot.error}\n${snapshot.data}", style: const TextStyle(color: Colors.white));
              } else if (snapshot.hasData) {
                return GridView.builder(
                  itemCount: snapshot.data!.length,
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 100),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 19,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 145,
                  ),
                  itemBuilder: (context, index) {
                    return AllergicItem(item: snapshot.data![index]);
                  },
                );
              } else {
                return const Text("No idead...", style: TextStyle(color: Colors.white));
              }
            },
          ),
        ),
      ],
    );
  }
}
