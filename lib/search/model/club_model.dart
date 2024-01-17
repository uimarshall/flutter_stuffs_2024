class ClubModel {
  final String name;
  final String? image;
  final String? description;
  final String? location;
  final String? category;
  final String? id;

  ClubModel(
      {required this.name,
      this.image,
      this.description,
      this.location,
      this.category,
      this.id});

  factory ClubModel.fromJson(Map<String, dynamic> json) {
    return ClubModel(
        name: json['name'],
        image: json['image'],
        description: json['description'],
        location: json['location'],
        category: json['category'],
        id: json['id']);
  }
}
