import 'package:flutter/material.dart';

class ProductsModel with ChangeNotifier {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  ProductsModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'] is int
        ? (json['price'] as int).toDouble()
        : json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  static List<ProductsModel> productsFromSnapshot(List productSnapshot) {
    return productSnapshot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['title'] = title;
  //   data['price'] = price;
  //   data['description'] = description;
  //   data['category'] = category;
  //   data['image'] = image;

  //   return data;
  // }
}
