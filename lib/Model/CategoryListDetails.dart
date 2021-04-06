// To parse this JSON data, do
//
//     final categoryListDetails = categoryListDetailsFromJson(jsonString);

import 'dart:convert';

CategoryListDetails categoryListDetailsFromJson(String str) => CategoryListDetails.fromJson(json.decode(str));

String categoryListDetailsToJson(CategoryListDetails data) => json.encode(data.toJson());

class CategoryListDetails {
  CategoryListDetails({
    this.success,
    this.message,
    this.productGroups,
  });

  bool success;
  int message;
  List<ProductGroup> productGroups;

  factory CategoryListDetails.fromJson(Map<String, dynamic> json) => CategoryListDetails(
    success: json["success"],
    message: json["message"],
    productGroups: List<ProductGroup>.from(json["product_groups"].map((x) => ProductGroup.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "product_groups": List<dynamic>.from(productGroups.map((x) => x.toJson())),
  };
}

class ProductGroup {
  ProductGroup({
    this.id,
    this.name,
    this.imageUrl,
    this.categoryId,
    this.sequenceNumber,
    this.productIds,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    this.uniqueId,
    this.v,
  });

  String id;
  List<String> name;
  String imageUrl;
  int categoryId;
  int sequenceNumber;
  List<String> productIds;
  StoreId storeId;
  DateTime createdAt;
  DateTime updatedAt;
  int uniqueId;
  int v;

  factory ProductGroup.fromJson(Map<String, dynamic> json) => ProductGroup(
    id: json["_id"],
    name: List<String>.from(json["name"].map((x) => x)),
    imageUrl: json["image_url"],
    categoryId: json["category_id"],
    sequenceNumber: json["sequence_number"],
    productIds: List<String>.from(json["product_ids"].map((x) => x)),
    storeId: storeIdValues.map[json["store_id"]],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    uniqueId: json["unique_id"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": List<dynamic>.from(name.map((x) => x)),
    "image_url": imageUrl,
    "category_id": categoryId,
    "sequence_number": sequenceNumber,
    "product_ids": List<dynamic>.from(productIds.map((x) => x)),
    "store_id": storeIdValues.reverse[storeId],
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "unique_id": uniqueId,
    "__v": v,
  };
}

enum StoreId { THE_5_F7_B660_C82_E4274_E19_B4658_D }

final storeIdValues = EnumValues({
  "5f7b660c82e4274e19b4658d": StoreId.THE_5_F7_B660_C82_E4274_E19_B4658_D
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
