class DetailImage {
  final int id;
  final String name;
  final String rating;
  final String description;
  final String imageUrl;

  DetailImage({
    required this.id,
    required this.name,
    required this.rating,
    required this.description,
    required this.imageUrl,
  });

  // create model object from json object.
  factory DetailImage.fromJson(Map<String, dynamic> json) {
    return DetailImage(
      id: json["id"],
      name: json["name"],
      rating: json["rating"],
      description: json["description"],
      imageUrl: json["imageUrl"],
    );
  }

  // create json object from model object.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "rating": rating,
      "description": description,
      "imageUrl": imageUrl
    };
  }
}
