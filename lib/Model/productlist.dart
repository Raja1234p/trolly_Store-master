// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'dart:convert';

ProductList productListFromJson(String str) => ProductList.fromJson(json.decode(str));

String productListToJson(ProductList data) => json.encode(data.toJson());

class ProductList {
  ProductList({
    this.success,
    this.message,
    this.products,
    this.itemArray,
  });

  bool success;
  int message;
  List<Product> products;
  List<ItemArray> itemArray;

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
    success: json["success"],
    message: json["message"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    itemArray: List<ItemArray>.from(json["item_array"].map((x) => ItemArray.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "item_array": List<dynamic>.from(itemArray.map((x) => x.toJson())),
  };
}

class ItemArray {
  ItemArray({
    this.itemName,
    this.productId,
  });

  List<String> itemName;
  String productId;

  factory ItemArray.fromJson(Map<String, dynamic> json) => ItemArray(
    itemName: List<String>.from(json["item_name"].map((x) => x)),
    productId: json["product_id"],
  );

  Map<String, dynamic> toJson() => {
    "item_name": List<dynamic>.from(itemName.map((x) => x)),
    "product_id": productId,
  };
}

class Product {
  Product({
    this.id,
    this.name,
    this.isVisibleInStore,
    this.categoryId,
    this.superProductId,
    this.groupId,
    this.uniqueIdForStoreData,
    this.sequenceNumber,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    this.uniqueId,
    this.v,
    this.specificationsDetails,
  });

  String id;
  List<String> name;
  bool isVisibleInStore;
  int categoryId;
  dynamic superProductId;
  dynamic groupId;
  int uniqueIdForStoreData;
  int sequenceNumber;
  StoreId storeId;
  DateTime createdAt;
  DateTime updatedAt;
  int uniqueId;
  int v;
  List<dynamic> specificationsDetails;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["_id"],
    name: List<String>.from(json["name"].map((x) => x)),
    isVisibleInStore: json["is_visible_in_store"],
    categoryId: json["category_id"],
    superProductId: json["super_product_id"],
    groupId: json["group_id"],
    uniqueIdForStoreData: json["unique_id_for_store_data"],
    sequenceNumber: json["sequence_number"],
    storeId: storeIdValues.map[json["store_id"]],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    uniqueId: json["unique_id"],
    v: json["__v"],
    specificationsDetails: List<dynamic>.from(json["specifications_details"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": List<dynamic>.from(name.map((x) => x)),
    "is_visible_in_store": isVisibleInStore,
    "category_id": categoryId,
    "super_product_id": superProductId,
    "group_id": groupId,
    "unique_id_for_store_data": uniqueIdForStoreData,
    "sequence_number": sequenceNumber,
    "store_id": storeIdValues.reverse[storeId],
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "unique_id": uniqueId,
    "__v": v,
    "specifications_details": List<dynamic>.from(specificationsDetails.map((x) => x)),
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
