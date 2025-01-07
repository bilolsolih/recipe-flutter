
class RecipeDetailModel {
  final String title, image, desc, chefFullName, chefUsername, chefImage, difficulty;
  final int rating, reviews, duration;
  final List<Map<String, dynamic>> ingredients;

  const RecipeDetailModel({
    required this.title,
    required this.image,
    required this.desc,
    required this.chefFullName,
    required this.chefUsername,
    required this.chefImage,
    required this.duration,
    required this.difficulty,
    required this.rating,
    required this.reviews,
    required this.ingredients,
  });

  factory RecipeDetailModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailModel(
      title: json['title'],
      image: json['image'],
      desc: json['desc'],
      chefFullName: json['chefFullName'],
      chefUsername: json['chefUsername'],
      chefImage: json['chefImage'],
      duration: json['duration'],
      difficulty: json['difficulty'],
      rating: json['rating'],
      reviews: json['reviews'],
      ingredients: json['ingredients'],
    );
  }
}

class RecipeListModel {
  final String title, image, desc, chefFullName, difficulty;
  final int rating, duration;

  const RecipeListModel({
    required this.title,
    required this.image,
    required this.desc,
    required this.chefFullName,
    required this.duration,
    required this.difficulty,
    required this.rating,
  });

  factory RecipeListModel.fromJson(Map<String, dynamic> json) {
    return RecipeListModel(
      title: json['title'],
      image: json['image'],
      desc: json['desc'],
      chefFullName: json['chefFullName'],
      duration: json['duration'],
      difficulty: json['difficulty'],
      rating: json['rating'],
    );
  }
}
