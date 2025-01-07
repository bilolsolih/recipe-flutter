class AllergicIngredientModel {
  final int id;
  final String title, image;

  const AllergicIngredientModel({required this.id, required this.title, required this.image});

  factory AllergicIngredientModel.fromJson(Map<String, dynamic> json) {
    return AllergicIngredientModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}
