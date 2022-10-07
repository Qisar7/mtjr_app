// To parse this JSON data, do
//
//     final allProduct = allProductFromJson(jsonString);

import 'dart:convert';

List<AllProduct> allProductFromJson(String str) =>
    List<AllProduct>.from(json.decode(str).map((x) => AllProduct.fromJson(x)));

// String allProductToJson(List<AllProduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllProduct {
  AllProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  factory AllProduct.fromJson(Map<String, dynamic> json) => AllProduct(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  // Map<String, dynamic> toJson() => {
  //     "id": id,
  //     "title": title,
  //     "price": price,
  //     "description": description,
  //     "category": categoryValues.reverse[category],
  //     "image": image,
  //     "rating": rating.toJson(),
  // };
}

// enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

// final categoryValues = EnumValues({
//     "electronics": Category.ELECTRONICS,
//     "jewelery": Category.JEWELERY,
//     "men's clothing": Category.MEN_S_CLOTHING,
//     "women's clothing": Category.WOMEN_S_CLOTHING
// });

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  double rate;
  int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
