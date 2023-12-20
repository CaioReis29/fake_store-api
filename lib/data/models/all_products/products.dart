import 'dart:convert';

import 'package:fake_store_api/data/models/all_products/rating.dart';

class Products {
  int? id;
  String? title;
  dynamic price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Products copy({
    int? id,
    String? title,
    dynamic price,
    String? category,
    String? image,
    Rating? rating,
    int? count,
    dynamic rate,
  }) =>
      Products(
        id: id,
        title: title,
        price: price,
        description: description,
        category: category,
        image: image ?? "",
        rating: Rating(
          count: count,
          rate: rate,
        ),
      );

  Products({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image,
      "rating": rating?.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());
}
