// To parse this JSON data, do
//
//     final getOrders = getOrdersFromJson(jsonString);

import 'dart:convert';

GetOrders getOrdersFromJson(String str) => GetOrders.fromJson(json.decode(str));

String getOrdersToJson(GetOrders data) => json.encode(data.toJson());

class GetOrders {
  GetOrders({
    this.success,
    this.message,
    this.isConfirmationCodeRequiredAtCompleteDelivery,
    this.isConfirmationCodeRequiredAtPickupDelivery,
    this.currencySign,
    this.orders,
  });

  bool success;
  int message;
  bool isConfirmationCodeRequiredAtCompleteDelivery;
  bool isConfirmationCodeRequiredAtPickupDelivery;
  String currencySign;
  List<Order> orders;

  factory GetOrders.fromJson(Map<String, dynamic> json) => GetOrders(
    success: json["success"],
    message: json["message"],
    isConfirmationCodeRequiredAtCompleteDelivery: json["is_confirmation_code_required_at_complete_delivery"],
    isConfirmationCodeRequiredAtPickupDelivery: json["is_confirmation_code_required_at_pickup_delivery"],
    currencySign: json["currency_sign"],
    orders: List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "is_confirmation_code_required_at_complete_delivery": isConfirmationCodeRequiredAtCompleteDelivery,
    "is_confirmation_code_required_at_pickup_delivery": isConfirmationCodeRequiredAtPickupDelivery,
    "currency_sign": currencySign,
    "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
  };
}

class Order {
  Order({
    this.id,
    this.orderStatus,
    this.isScheduleOrder,
    this.orderType,
    this.userId,
    this.orderChange,
    this.userOrderChange,
    this.timezone,
    this.uniqueId,
    this.total,
    this.userDetail,
    this.scheduleOrderStartAt,
    this.scheduleOrderStartAt2,
    this.isPaymentModeCash,
    this.isPaidFromWallet,
    this.deliveryType,
    this.createdAt,
  });

  String id;
  int orderStatus;
  bool isScheduleOrder;
  int orderType;
  String userId;
  bool orderChange;
  bool userOrderChange;
  String timezone;
  int uniqueId;
  double total;
  UserDetail userDetail;
  dynamic scheduleOrderStartAt;
  dynamic scheduleOrderStartAt2;
  bool isPaymentModeCash;
  bool isPaidFromWallet;
  int deliveryType;
  DateTime createdAt;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["_id"],
    orderStatus: json["order_status"],
    isScheduleOrder: json["is_schedule_order"],
    orderType: json["order_type"],
    userId: json["user_id"],
    orderChange: json["order_change"],
    userOrderChange: json["user_order_change"],
    timezone: json["timezone"],
    uniqueId: json["unique_id"],
    total: json["total"].toDouble(),
    userDetail: UserDetail.fromJson(json["user_detail"]),
    scheduleOrderStartAt: json["schedule_order_start_at"],
    scheduleOrderStartAt2: json["schedule_order_start_at2"],
    isPaymentModeCash: json["is_payment_mode_cash"],
    isPaidFromWallet: json["is_paid_from_wallet"],
    deliveryType: json["delivery_type"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "order_status": orderStatus,
    "is_schedule_order": isScheduleOrder,
    "order_type": orderType,
    "user_id": userId,
    "order_change": orderChange,
    "user_order_change": userOrderChange,
    "timezone": timezone,
    "unique_id": uniqueId,
    "total": total,
    "user_detail": userDetail.toJson(),
    "schedule_order_start_at": scheduleOrderStartAt,
    "schedule_order_start_at2": scheduleOrderStartAt2,
    "is_payment_mode_cash": isPaymentModeCash,
    "is_paid_from_wallet": isPaidFromWallet,
    "delivery_type": deliveryType,
    "created_at": createdAt.toIso8601String(),
  };
}

class UserDetail {
  UserDetail({
    this.id,
    this.imageUrl,
    this.name,
    this.phone,
  });

  String id;
  String imageUrl;
  String name;
  String phone;

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
    id: json["_id"],
    imageUrl: json["image_url"],
    name: json["name"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image_url": imageUrl,
    "name": name,
    "phone": phone,
  };
}
