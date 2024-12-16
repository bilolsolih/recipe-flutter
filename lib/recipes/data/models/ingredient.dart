class Ingredient {
  final String amount, ingredient;

  const Ingredient({required this.amount, required this.ingredient});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      amount: json['amount'],
      ingredient: json['ingredient'],
    );
  }
}
