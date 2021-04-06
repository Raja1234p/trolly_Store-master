// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'dart:convert';

CategoryListModel productListFromJson(String str) => CategoryListModel.fromJson(json.decode(str));

String productListToJson(CategoryListModel data) => json.encode(data.toJson());

class CategoryListModel {
  CategoryListModel({
    this.success,
    this.productArray,
  });

  bool success;
  List<ProductArray> productArray;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) => CategoryListModel(
    success: json["success"],
    productArray: List<ProductArray>.from(json["product_array"].map((x) => ProductArray.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "product_array": List<dynamic>.from(productArray.map((x) => x.toJson())),
  };
}

class ProductArray {
  ProductArray({
    this.name,
    this.id,
  });

  List<String> name;
  String id;

  factory ProductArray.fromJson(Map<String, dynamic> json) => ProductArray(
    name: List<String>.from(json["name"].map((x) => x)),
    id: json["_id"],
  );

  Map<String, dynamic> toJson() => {
    "name": List<dynamic>.from(name.map((x) => x)),
    "_id": id,
  };
}
