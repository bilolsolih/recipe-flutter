class CustomizationGridItem {
  final int id;
  final String title, image;

  const CustomizationGridItem({required this.id, required this.title, required this.image});

  factory CustomizationGridItem.fromJson(Map<String, dynamic> json) {
    return CustomizationGridItem(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}
