class ChefModelList {
  final String fullName, username, image;
  final int likes;
  final bool following;

  const ChefModelList({
    required this.fullName,
    required this.username,
    required this.image,
    required this.likes,
    required this.following,
  });

  factory ChefModelList.fromJson(Map<String, dynamic> json) {
    return ChefModelList(
      fullName: json['fullName'],
      username: json['username'],
      image: json['image'],
      likes: json['likes'],
      following: json['following'],
    );
  }
}
