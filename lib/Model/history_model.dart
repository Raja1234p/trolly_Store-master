// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'dart:convert';

HistoryModel historyModelFromJson(String str) => HistoryModel.fromJson(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toJson());

class HistoryModel {
  HistoryModel({
    this.success,
    this.message,
    this.currency,
    this.userDetail,
    this.providerDetail,
    this.paymentGatewayName,
    this.orderList,
  });

  bool success;
  int message;
  String currency;
  HistoryModelUserDetail userDetail;
  ProviderDetail providerDetail;
  String paymentGatewayName;
  OrderList orderList;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
    success: json["success"],
    message: json["message"],
    currency: json["currency"],
    userDetail: HistoryModelUserDetail.fromJson(json["user_detail"]),
    providerDetail: ProviderDetail.fromJson(json["provider_detail"]),
    paymentGatewayName: json["payment_gateway_name"],
    orderList: OrderList.fromJson(json["order_list"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "currency": currency,
    "user_detail": userDetail.toJson(),
    "provider_detail": providerDetail.toJson(),
    "payment_gateway_name": paymentGatewayName,
    "order_list": orderList.toJson(),
  };
}

class OrderList {
  OrderList({
    this.id,
    this.timezone,
    this.orderChange,
    this.userOrderChange,
    this.isAllowContactlessDelivery,
    this.orderType,
    this.deliveryType,
    this.orderStatusId,
    this.orderStatus,
    this.orderStatusManageId,
    this.imageUrl,
    this.isScheduleOrderInformedToStore,
    this.storeNotify,
    this.cancelReason,
    this.userDetail,
    this.storeDetail,
    this.providerDetail,
    this.total,
    this.isUserPickUpOrder,
    this.isPaymentModeCash,
    this.isPaidFromWallet,
    this.isUserShowInvoice,
    this.isProviderShowInvoice,
    this.isStoreRatedToProvider,
    this.isStoreRatedToUser,
    this.isProviderRatedToStore,
    this.isProviderRatedToUser,
    this.isUserRatedToProvider,
    this.isUserRatedToStore,
    this.isScheduleOrder,
    this.dateTime,
    this.completedDateTag,
    this.completedDateInCityTimezone,
    this.scheduleOrderStartAt2,
    this.storeId,
    this.cartId,
    this.orderPaymentId,
    this.userId,
    this.orderTypeId,
    this.confirmationCodeForPickUpDelivery,
    this.confirmationCodeForCompleteDelivery,
    this.scheduleOrderStartAt,
    this.scheduleOrderServerStartAt,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
    this.cityId,
    this.countryId,
    this.uniqueId,
    this.v,
    this.orderStatusBy,
    this.cartDetail,
    this.orderPaymentDetail,
    this.requestDetail,
  });

  String id;
  String timezone;
  bool orderChange;
  bool userOrderChange;
  bool isAllowContactlessDelivery;
  int orderType;
  int deliveryType;
  int orderStatusId;
  int orderStatus;
  int orderStatusManageId;
  List<dynamic> imageUrl;
  bool isScheduleOrderInformedToStore;
  int storeNotify;
  String cancelReason;
  OrderListUserDetail userDetail;
  StoreDetail storeDetail;
  dynamic providerDetail;
  double total;
  bool isUserPickUpOrder;
  bool isPaymentModeCash;
  bool isPaidFromWallet;
  bool isUserShowInvoice;
  bool isProviderShowInvoice;
  bool isStoreRatedToProvider;
  bool isStoreRatedToUser;
  bool isProviderRatedToStore;
  bool isProviderRatedToUser;
  bool isUserRatedToProvider;
  bool isUserRatedToStore;
  bool isScheduleOrder;
  List<DatesTime> dateTime;
  String completedDateTag;
  DateTime completedDateInCityTimezone;
  dynamic scheduleOrderStartAt2;
  String storeId;
  String cartId;
  String orderPaymentId;
  String userId;
  String orderTypeId;
  int confirmationCodeForPickUpDelivery;
  int confirmationCodeForCompleteDelivery;
  dynamic scheduleOrderStartAt;
  DateTime scheduleOrderServerStartAt;
  DateTime completedAt;
  DateTime createdAt;
  DateTime updatedAt;
  String cityId;
  String countryId;
  int uniqueId;
  int v;
  String orderStatusBy;
  CartDetail cartDetail;
  OrderPaymentDetail orderPaymentDetail;
  dynamic requestDetail;

  factory OrderList.fromJson(Map<String, dynamic> json) => OrderList(
    id: json["_id"],
    timezone: json["timezone"],
    orderChange: json["order_change"],
    userOrderChange: json["user_order_change"],
    isAllowContactlessDelivery: json["is_allow_contactless_delivery"],
    orderType: json["order_type"],
    deliveryType: json["delivery_type"],
    orderStatusId: json["order_status_id"],
    orderStatus: json["order_status"],
    orderStatusManageId: json["order_status_manage_id"],
    imageUrl: List<dynamic>.from(json["image_url"].map((x) => x)),
    isScheduleOrderInformedToStore: json["is_schedule_order_informed_to_store"],
    storeNotify: json["store_notify"],
    cancelReason: json["cancel_reason"],
    userDetail: OrderListUserDetail.fromJson(json["user_detail"]),
    storeDetail: StoreDetail.fromJson(json["store_detail"]),
    providerDetail: json["provider_detail"],
    total: json["total"].toDouble(),
    isUserPickUpOrder: json["is_user_pick_up_order"],
    isPaymentModeCash: json["is_payment_mode_cash"],
    isPaidFromWallet: json["is_paid_from_wallet"],
    isUserShowInvoice: json["is_user_show_invoice"],
    isProviderShowInvoice: json["is_provider_show_invoice"],
    isStoreRatedToProvider: json["is_store_rated_to_provider"],
    isStoreRatedToUser: json["is_store_rated_to_user"],
    isProviderRatedToStore: json["is_provider_rated_to_store"],
    isProviderRatedToUser: json["is_provider_rated_to_user"],
    isUserRatedToProvider: json["is_user_rated_to_provider"],
    isUserRatedToStore: json["is_user_rated_to_store"],
    isScheduleOrder: json["is_schedule_order"],
    dateTime: List<DatesTime>.from(json["date_time"].map((x) => DatesTime.fromJson(x))),
    completedDateTag: json["completed_date_tag"],
    completedDateInCityTimezone: DateTime.parse(json["completed_date_in_city_timezone"]),
    scheduleOrderStartAt2: json["schedule_order_start_at2"],
    storeId: json["store_id"],
    cartId: json["cart_id"],
    orderPaymentId: json["order_payment_id"],
    userId: json["user_id"],
    orderTypeId: json["order_type_id"],
    confirmationCodeForPickUpDelivery: json["confirmation_code_for_pick_up_delivery"],
    confirmationCodeForCompleteDelivery: json["confirmation_code_for_complete_delivery"],
    scheduleOrderStartAt: json["schedule_order_start_at"],
    scheduleOrderServerStartAt: DateTime.parse(json["schedule_order_server_start_at"]),
    completedAt: DateTime.parse(json["completed_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    cityId: json["city_id"],
    countryId: json["country_id"],
    uniqueId: json["unique_id"],
    v: json["__v"],
    orderStatusBy: json["order_status_by"],
    cartDetail: CartDetail.fromJson(json["cart_detail"]),
    orderPaymentDetail: OrderPaymentDetail.fromJson(json["order_payment_detail"]),
    requestDetail: json["request_detail"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "timezone": timezone,
    "order_change": orderChange,
    "user_order_change": userOrderChange,
    "is_allow_contactless_delivery": isAllowContactlessDelivery,
    "order_type": orderType,
    "delivery_type": deliveryType,
    "order_status_id": orderStatusId,
    "order_status": orderStatus,
    "order_status_manage_id": orderStatusManageId,
    "image_url": List<dynamic>.from(imageUrl.map((x) => x)),
    "is_schedule_order_informed_to_store": isScheduleOrderInformedToStore,
    "store_notify": storeNotify,
    "cancel_reason": cancelReason,
    "user_detail": userDetail.toJson(),
    "store_detail": storeDetail.toJson(),
    "provider_detail": providerDetail,
    "total": total,
    "is_user_pick_up_order": isUserPickUpOrder,
    "is_payment_mode_cash": isPaymentModeCash,
    "is_paid_from_wallet": isPaidFromWallet,
    "is_user_show_invoice": isUserShowInvoice,
    "is_provider_show_invoice": isProviderShowInvoice,
    "is_store_rated_to_provider": isStoreRatedToProvider,
    "is_store_rated_to_user": isStoreRatedToUser,
    "is_provider_rated_to_store": isProviderRatedToStore,
    "is_provider_rated_to_user": isProviderRatedToUser,
    "is_user_rated_to_provider": isUserRatedToProvider,
    "is_user_rated_to_store": isUserRatedToStore,
    "is_schedule_order": isScheduleOrder,
    "date_time": List<dynamic>.from(dateTime.map((x) => x.toJson())),
    "completed_date_tag": completedDateTag,
    "completed_date_in_city_timezone": completedDateInCityTimezone.toIso8601String(),
    "schedule_order_start_at2": scheduleOrderStartAt2,
    "store_id": storeId,
    "cart_id": cartId,
    "order_payment_id": orderPaymentId,
    "user_id": userId,
    "order_type_id": orderTypeId,
    "confirmation_code_for_pick_up_delivery": confirmationCodeForPickUpDelivery,
    "confirmation_code_for_complete_delivery": confirmationCodeForCompleteDelivery,
    "schedule_order_start_at": scheduleOrderStartAt,
    "schedule_order_server_start_at": scheduleOrderServerStartAt.toIso8601String(),
    "completed_at": completedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "city_id": cityId,
    "country_id": countryId,
    "unique_id": uniqueId,
    "__v": v,
    "order_status_by": orderStatusBy,
    "cart_detail": cartDetail.toJson(),
    "order_payment_detail": orderPaymentDetail.toJson(),
    "request_detail": requestDetail,
  };
}

class CartDetail {
  CartDetail({
    this.userType,
    this.storeId,
    this.orderPaymentId,
    this.totalItemTax,
    this.deliveryType,
    this.language,
    this.pickupAddresses,
    this.destinationAddresses,
    this.orderDetails,
    this.totalItemCount,
    this.totalCartPrice,
    this.id,
    this.cartUniqueToken,
    this.userId,
    this.userTypeId,
    this.orderId,
    this.cityId,
    this.createdAt,
    this.updatedAt,
    this.uniqueId,
    this.v,
  });

  int userType;
  String storeId;
  String orderPaymentId;
  int totalItemTax;
  int deliveryType;
  int language;
  List<Address> pickupAddresses;
  List<Address> destinationAddresses;
  List<OrderDetail> orderDetails;
  int totalItemCount;
  int totalCartPrice;
  String id;
  String cartUniqueToken;
  String userId;
  String userTypeId;
  String orderId;
  String cityId;
  DateTime createdAt;
  DateTime updatedAt;
  int uniqueId;
  int v;

  factory CartDetail.fromJson(Map<String, dynamic> json) => CartDetail(
    userType: json["user_type"],
    storeId: json["store_id"],
    orderPaymentId: json["order_payment_id"],
    totalItemTax: json["total_item_tax"],
    deliveryType: json["delivery_type"],
    language: json["language"],
    pickupAddresses: List<Address>.from(json["pickup_addresses"].map((x) => Address.fromJson(x))),
    destinationAddresses: List<Address>.from(json["destination_addresses"].map((x) => Address.fromJson(x))),
    orderDetails: List<OrderDetail>.from(json["order_details"].map((x) => OrderDetail.fromJson(x))),
    totalItemCount: json["total_item_count"],
    totalCartPrice: json["total_cart_price"].toInt(),
    id: json["_id"],
    cartUniqueToken: json["cart_unique_token"],
    userId: json["user_id"],
    userTypeId: json["user_type_id"],
    orderId: json["order_id"],
    cityId: json["city_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    uniqueId: json["unique_id"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "user_type": userType,
    "store_id": storeId,
    "order_payment_id": orderPaymentId,
    "total_item_tax": totalItemTax,
    "delivery_type": deliveryType,
    "language": language,
    "pickup_addresses": List<dynamic>.from(pickupAddresses.map((x) => x.toJson())),
    "destination_addresses": List<dynamic>.from(destinationAddresses.map((x) => x.toJson())),
    "order_details": List<dynamic>.from(orderDetails.map((x) => x.toJson())),
    "total_item_count": totalItemCount,
    "total_cart_price": totalCartPrice,
    "_id": id,
    "cart_unique_token": cartUniqueToken,
    "user_id": userId,
    "user_type_id": userTypeId,
    "order_id": orderId,
    "city_id": cityId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "unique_id": uniqueId,
    "__v": v,
  };
}

class Address {
  Address({
    this.deliveryStatus,
    this.addressType,
    this.address,
    this.city,
    this.location,
    this.note,
    this.userType,
    this.userDetails,
  });

  int deliveryStatus;
  String addressType;
  String address;
  String city;
  List<double> location;
  String note;
  int userType;
  UserDetails userDetails;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    deliveryStatus: json["delivery_status"],
    addressType: json["address_type"],
    address: json["address"],
    city: json["city"],
    location: List<double>.from(json["location"].map((x) => x.toDouble())),
    note: json["note"],
    userType: json["user_type"] == null ? null : json["user_type"],
    userDetails: UserDetails.fromJson(json["user_details"]),
  );

  Map<String, dynamic> toJson() => {
    "delivery_status": deliveryStatus,
    "address_type": addressType,
    "address": address,
    "city": city,
    "location": List<dynamic>.from(location.map((x) => x)),
    "note": note,
    "user_type": userType == null ? null : userType,
    "user_details": userDetails.toJson(),
  };
}

class UserDetails {
  UserDetails({
    this.name,
    this.countryPhoneCode,
    this.phone,
    this.email,
  });

  String name;
  String countryPhoneCode;
  String phone;
  String email;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    name: json["name"],
    countryPhoneCode: json["country_phone_code"],
    phone: json["phone"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "country_phone_code": countryPhoneCode,
    "phone": phone,
    "email": email,
  };
}

class OrderDetail {
  OrderDetail({
    this.items,
    this.productId,
    this.productName,
    this.uniqueId,
    this.totalItemPrice,
    this.totalItemTax,
  });

  List<Item> items;
  String productId;
  String productName;
  int uniqueId;
  String totalItemPrice;
  int totalItemTax;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    productId: json["product_id"],
    productName: json["product_name"],
    uniqueId: json["unique_id"],
    totalItemPrice: json["total_item_price"].toString(),
    totalItemTax: json["total_item_tax"],
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "product_id": productId,
    "product_name": productName,
    "unique_id": uniqueId,
    "total_item_price": totalItemPrice,
    "total_item_tax": totalItemTax,
  };
}

class Item {
  Item({
    this.details,
    this.imageUrl,
    this.itemId,
    this.itemName,
    this.noteForItem,
    this.itemPrice,
    this.itemTax,
    this.maxItemQuantity,
    this.quantity,
    this.specifications,
    this.tax,
    this.totalItemPrice,
    this.totalItemTax,
    this.totalPrice,
    this.totalSpecificationPrice,
    this.totalSpecificationTax,
    this.totalTax,
    this.uniqueId,
  });

  String details;
  List<String> imageUrl;
  String itemId;
  String itemName;
  String noteForItem;
  double itemPrice;
  int itemTax;
  int maxItemQuantity;
  int quantity;
  List<dynamic> specifications;
  int tax;
  double totalItemPrice;
  int totalItemTax;
  int totalPrice;
  int totalSpecificationPrice;
  int totalSpecificationTax;
  int totalTax;
  int uniqueId;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    details: json["details"],
    imageUrl: List<String>.from(json["image_url"].map((x) => x)),
    itemId: json["item_id"],
    itemName: json["item_name"],
    noteForItem: json["note_for_item"],
    itemPrice: json["item_price"].toDouble(),
    itemTax: json["item_tax"],
    maxItemQuantity: json["max_item_quantity"],
    quantity: json["quantity"],
    specifications: List<dynamic>.from(json["specifications"].map((x) => x)),
    tax: json["tax"],
    totalItemPrice: json["total_item_price"].toDouble(),
    totalItemTax: json["total_item_tax"],
    totalPrice: json["total_price"],
    totalSpecificationPrice: json["total_specification_price"],
    totalSpecificationTax: json["total_specification_tax"],
    totalTax: json["total_tax"],
    uniqueId: json["unique_id"],
  );

  Map<String, dynamic> toJson() => {
    "details": details,
    "image_url": List<dynamic>.from(imageUrl.map((x) => x)),
    "item_id": itemId,
    "item_name": itemName,
    "note_for_item": noteForItem,
    "item_price": itemPrice,
    "item_tax": itemTax,
    "max_item_quantity": maxItemQuantity,
    "quantity": quantity,
    "specifications": List<dynamic>.from(specifications.map((x) => x)),
    "tax": tax,
    "total_item_price": totalItemPrice,
    "total_item_tax": totalItemTax,
    "total_price": totalPrice,
    "total_specification_price": totalSpecificationPrice,
    "total_specification_tax": totalSpecificationTax,
    "total_tax": totalTax,
    "unique_id": uniqueId,
  };
}

class DatesTime {
  DatesTime({
    this.status,
    this.date,
  });

  int status;
  DateTime date;

  factory DatesTime.fromJson(Map<String, dynamic> json) => DatesTime(
    status: json["status"],
    date: DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "date": date.toIso8601String(),
  };
}

class OrderPaymentDetail {
  OrderPaymentDetail({
    this.applicationFeeAmount,
    this.paymentIntentId,
    this.captureAmount,
    this.tipAmount,
    this.tipValue,
    this.promoId,
    this.deliveryPriceUsedType,
    this.deliveryPriceUsedTypeId,
    this.currencyCode,
    this.adminCurrencyCode,
    this.orderCurrencyCode,
    this.currentRate,
    this.walletToAdminCurrentRate,
    this.walletToOrderCurrentRate,
    this.totalDistance,
    this.totalTime,
    this.totalItemCount,
    this.isDistanceUnitMile,
    this.serviceTax,
    this.totalServicePrice,
    this.totalAdminTaxPrice,
    this.totalDeliveryPrice,
    this.payToProvider,
    this.adminProfitModeOnDelivery,
    this.adminProfitValueOnDelivery,
    this.totalAdminProfitOnDelivery,
    this.totalProviderIncome,
    this.itemTax,
    this.totalCartPrice,
    this.totalStoreTaxPrice,
    this.totalOrderPrice,
    this.otherPromoPaymentLoyalty,
    this.payToStore,
    this.adminProfitModeOnStore,
    this.adminProfitValueOnStore,
    this.totalAdminProfitOnStore,
    this.totalStoreIncome,
    this.promoPayment,
    this.userPayPayment,
    this.walletPayment,
    this.totalAfterWalletPayment,
    this.remainingPayment,
    this.total,
    this.cashPayment,
    this.cardPayment,
    this.isPaidFromWallet,
    this.isPromoForDeliveryService,
    this.isPaymentModeCash,
    this.isPaymentPaid,
    this.isOrderPricePaidByStore,
    this.isStorePayDeliveryFees,
    this.isMinFareApplied,
    this.isTransferedToStore,
    this.isTransferedToProvider,
    this.isUserPickUpOrder,
    this.isOrderPaymentStatusSetByStore,
    this.isCancellationFee,
    this.orderCancellationCharge,
    this.isOrderPaymentRefund,
    this.refundAmount,
    this.isProviderIncomeSetInWallet,
    this.isStoreIncomeSetInWallet,
    this.providerIncomeSetInWallet,
    this.storeIncomeSetInWallet,
    this.stripeAccount,
    this.completedDateTag,
    this.completedDateInCityTimezone,
    this.id,
    this.cartId,
    this.storeId,
    this.userId,
    this.countryId,
    this.cityId,
    this.createdAt,
    this.updatedAt,
    this.uniqueId,
    this.v,
    this.deliveredAt,
    this.orderId,
    this.orderUniqueId,
    this.providerId,
    this.invoiceNumber,
  });

  int applicationFeeAmount;
  String paymentIntentId;
  int captureAmount;
  int tipAmount;
  int tipValue;
  dynamic promoId;
  int deliveryPriceUsedType;
  dynamic deliveryPriceUsedTypeId;
  String currencyCode;
  String adminCurrencyCode;
  String orderCurrencyCode;
  int currentRate;
  int walletToAdminCurrentRate;
  int walletToOrderCurrentRate;
  double totalDistance;
  double totalTime;
  int totalItemCount;
  bool isDistanceUnitMile;
  int serviceTax;
  double totalServicePrice;
  int totalAdminTaxPrice;
  double totalDeliveryPrice;
  int payToProvider;
  int adminProfitModeOnDelivery;
  double adminProfitValueOnDelivery;
  double totalAdminProfitOnDelivery;
  int totalProviderIncome;
  int itemTax;
  double totalCartPrice;
  int totalStoreTaxPrice;
  double totalOrderPrice;
  int otherPromoPaymentLoyalty;
  int payToStore;
  int adminProfitModeOnStore;
  int adminProfitValueOnStore;
  int totalAdminProfitOnStore;
  double totalStoreIncome;
  int promoPayment;
  double userPayPayment;
  int walletPayment;
  double totalAfterWalletPayment;
  int remainingPayment;
  double total;
  double cashPayment;
  int cardPayment;
  bool isPaidFromWallet;
  bool isPromoForDeliveryService;
  bool isPaymentModeCash;
  bool isPaymentPaid;
  bool isOrderPricePaidByStore;
  bool isStorePayDeliveryFees;
  bool isMinFareApplied;
  bool isTransferedToStore;
  bool isTransferedToProvider;
  bool isUserPickUpOrder;
  bool isOrderPaymentStatusSetByStore;
  bool isCancellationFee;
  int orderCancellationCharge;
  bool isOrderPaymentRefund;
  int refundAmount;
  bool isProviderIncomeSetInWallet;
  bool isStoreIncomeSetInWallet;
  int providerIncomeSetInWallet;
  int storeIncomeSetInWallet;
  String stripeAccount;
  String completedDateTag;
  dynamic completedDateInCityTimezone;
  String id;
  String cartId;
  String storeId;
  String userId;
  String countryId;
  String cityId;
  DateTime createdAt;
  DateTime updatedAt;
  int uniqueId;
  int v;
  dynamic deliveredAt;
  String orderId;
  int orderUniqueId;
  dynamic providerId;
  String invoiceNumber;

  factory OrderPaymentDetail.fromJson(Map<String, dynamic> json) => OrderPaymentDetail(
    applicationFeeAmount: json["application_fee_amount"],
    paymentIntentId: json["payment_intent_id"],
    captureAmount: json["capture_amount"],
    tipAmount: json["tip_amount"],
    tipValue: json["tip_value"],
    promoId: json["promo_id"],
    deliveryPriceUsedType: json["delivery_price_used_type"],
    deliveryPriceUsedTypeId: json["delivery_price_used_type_id"],
    currencyCode: json["currency_code"],
    adminCurrencyCode: json["admin_currency_code"],
    orderCurrencyCode: json["order_currency_code"],
    currentRate: json["current_rate"],
    walletToAdminCurrentRate: json["wallet_to_admin_current_rate"],
    walletToOrderCurrentRate: json["wallet_to_order_current_rate"],
    totalDistance: json["total_distance"].toDouble(),
    totalTime: json["total_time"].toDouble(),
    totalItemCount: json["total_item_count"],
    isDistanceUnitMile: json["is_distance_unit_mile"],
    serviceTax: json["service_tax"],
    totalServicePrice: json["total_service_price"].toDouble(),
    totalAdminTaxPrice: json["total_admin_tax_price"],
    totalDeliveryPrice: json["total_delivery_price"].toDouble(),
    payToProvider: json["pay_to_provider"].toInt(),
    adminProfitModeOnDelivery: json["admin_profit_mode_on_delivery"],
    adminProfitValueOnDelivery: json["admin_profit_value_on_delivery"].toDouble(),
    totalAdminProfitOnDelivery: json["total_admin_profit_on_delivery"].toDouble(),
    totalProviderIncome: json["total_provider_income"],
    itemTax: json["item_tax"],
    totalCartPrice: json["total_cart_price"].toDouble(),
    totalStoreTaxPrice: json["total_store_tax_price"],
    totalOrderPrice: json["total_order_price"].toDouble(),
    otherPromoPaymentLoyalty: json["other_promo_payment_loyalty"],
    payToStore: json["pay_to_store"].toInt(),
    adminProfitModeOnStore: json["admin_profit_mode_on_store"],
    adminProfitValueOnStore: json["admin_profit_value_on_store"],
    totalAdminProfitOnStore: json["total_admin_profit_on_store"],
    totalStoreIncome: json["total_store_income"].toDouble(),
    promoPayment: json["promo_payment"],
    userPayPayment: json["user_pay_payment"].toDouble(),
    walletPayment: json["wallet_payment"],
    totalAfterWalletPayment: json["total_after_wallet_payment"].toDouble(),
    remainingPayment: json["remaining_payment"],
    total: json["total"].toDouble(),
    cashPayment: json["cash_payment"].toDouble(),
    cardPayment: json["card_payment"],
    isPaidFromWallet: json["is_paid_from_wallet"],
    isPromoForDeliveryService: json["is_promo_for_delivery_service"],
    isPaymentModeCash: json["is_payment_mode_cash"],
    isPaymentPaid: json["is_payment_paid"],
    isOrderPricePaidByStore: json["is_order_price_paid_by_store"],
    isStorePayDeliveryFees: json["is_store_pay_delivery_fees"],
    isMinFareApplied: json["is_min_fare_applied"],
    isTransferedToStore: json["is_transfered_to_store"],
    isTransferedToProvider: json["is_transfered_to_provider"],
    isUserPickUpOrder: json["is_user_pick_up_order"],
    isOrderPaymentStatusSetByStore: json["is_order_payment_status_set_by_store"],
    isCancellationFee: json["is_cancellation_fee"],
    orderCancellationCharge: json["order_cancellation_charge"],
    isOrderPaymentRefund: json["is_order_payment_refund"],
    refundAmount: json["refund_amount"],
    isProviderIncomeSetInWallet: json["is_provider_income_set_in_wallet"],
    isStoreIncomeSetInWallet: json["is_store_income_set_in_wallet"],
    providerIncomeSetInWallet: json["provider_income_set_in_wallet"],
    storeIncomeSetInWallet: json["store_income_set_in_wallet"],
    stripeAccount: json["stripeAccount"],
    completedDateTag: json["completed_date_tag"],
    completedDateInCityTimezone: json["completed_date_in_city_timezone"],
    id: json["_id"],
    cartId: json["cart_id"],
    storeId: json["store_id"],
    userId: json["user_id"],
    countryId: json["country_id"],
    cityId: json["city_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    uniqueId: json["unique_id"],
    v: json["__v"],
    deliveredAt: json["delivered_at"],
    orderId: json["order_id"],
    orderUniqueId: json["order_unique_id"],
    providerId: json["provider_id"],
    invoiceNumber: json["invoice_number"],
  );

  Map<String, dynamic> toJson() => {
    "application_fee_amount": applicationFeeAmount,
    "payment_intent_id": paymentIntentId,
    "capture_amount": captureAmount,
    "tip_amount": tipAmount,
    "tip_value": tipValue,
    "promo_id": promoId,
    "delivery_price_used_type": deliveryPriceUsedType,
    "delivery_price_used_type_id": deliveryPriceUsedTypeId,
    "currency_code": currencyCode,
    "admin_currency_code": adminCurrencyCode,
    "order_currency_code": orderCurrencyCode,
    "current_rate": currentRate,
    "wallet_to_admin_current_rate": walletToAdminCurrentRate,
    "wallet_to_order_current_rate": walletToOrderCurrentRate,
    "total_distance": totalDistance,
    "total_time": totalTime,
    "total_item_count": totalItemCount,
    "is_distance_unit_mile": isDistanceUnitMile,
    "service_tax": serviceTax,
    "total_service_price": totalServicePrice,
    "total_admin_tax_price": totalAdminTaxPrice,
    "total_delivery_price": totalDeliveryPrice,
    "pay_to_provider": payToProvider,
    "admin_profit_mode_on_delivery": adminProfitModeOnDelivery,
    "admin_profit_value_on_delivery": adminProfitValueOnDelivery,
    "total_admin_profit_on_delivery": totalAdminProfitOnDelivery,
    "total_provider_income": totalProviderIncome,
    "item_tax": itemTax,
    "total_cart_price": totalCartPrice,
    "total_store_tax_price": totalStoreTaxPrice,
    "total_order_price": totalOrderPrice,
    "other_promo_payment_loyalty": otherPromoPaymentLoyalty,
    "pay_to_store": payToStore,
    "admin_profit_mode_on_store": adminProfitModeOnStore,
    "admin_profit_value_on_store": adminProfitValueOnStore,
    "total_admin_profit_on_store": totalAdminProfitOnStore,
    "total_store_income": totalStoreIncome,
    "promo_payment": promoPayment,
    "user_pay_payment": userPayPayment,
    "wallet_payment": walletPayment,
    "total_after_wallet_payment": totalAfterWalletPayment,
    "remaining_payment": remainingPayment,
    "total": total,
    "cash_payment": cashPayment,
    "card_payment": cardPayment,
    "is_paid_from_wallet": isPaidFromWallet,
    "is_promo_for_delivery_service": isPromoForDeliveryService,
    "is_payment_mode_cash": isPaymentModeCash,
    "is_payment_paid": isPaymentPaid,
    "is_order_price_paid_by_store": isOrderPricePaidByStore,
    "is_store_pay_delivery_fees": isStorePayDeliveryFees,
    "is_min_fare_applied": isMinFareApplied,
    "is_transfered_to_store": isTransferedToStore,
    "is_transfered_to_provider": isTransferedToProvider,
    "is_user_pick_up_order": isUserPickUpOrder,
    "is_order_payment_status_set_by_store": isOrderPaymentStatusSetByStore,
    "is_cancellation_fee": isCancellationFee,
    "order_cancellation_charge": orderCancellationCharge,
    "is_order_payment_refund": isOrderPaymentRefund,
    "refund_amount": refundAmount,
    "is_provider_income_set_in_wallet": isProviderIncomeSetInWallet,
    "is_store_income_set_in_wallet": isStoreIncomeSetInWallet,
    "provider_income_set_in_wallet": providerIncomeSetInWallet,
    "store_income_set_in_wallet": storeIncomeSetInWallet,
    "stripeAccount": stripeAccount,
    "completed_date_tag": completedDateTag,
    "completed_date_in_city_timezone": completedDateInCityTimezone,
    "_id": id,
    "cart_id": cartId,
    "store_id": storeId,
    "user_id": userId,
    "country_id": countryId,
    "city_id": cityId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "unique_id": uniqueId,
    "__v": v,
    "delivered_at": deliveredAt,
    "order_id": orderId,
    "order_unique_id": orderUniqueId,
    "provider_id": providerId,
    "invoice_number": invoiceNumber,
  };
}

class StoreDetail {
  StoreDetail({
    this.id,
    this.imageUrl,
    this.name,
    this.phone,
  });

  String id;
  String imageUrl;
  List<String> name;
  String phone;

  factory StoreDetail.fromJson(Map<String, dynamic> json) => StoreDetail(
    id: json["_id"],
    imageUrl: json["image_url"],
    name: List<String>.from(json["name"].map((x) => x)),
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image_url": imageUrl,
    "name": List<dynamic>.from(name.map((x) => x)),
    "phone": phone,
  };
}

class OrderListUserDetail {
  OrderListUserDetail({
    this.id,
    this.imageUrl,
    this.name,
    this.phone,
  });

  String id;
  String imageUrl;
  String name;
  String phone;

  factory OrderListUserDetail.fromJson(Map<String, dynamic> json) => OrderListUserDetail(
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

class ProviderDetail {
  ProviderDetail();

  factory ProviderDetail.fromJson(Map<String, dynamic> json) => ProviderDetail(
  );

  Map<String, dynamic> toJson() => {
  };
}

class HistoryModelUserDetail {
  HistoryModelUserDetail({
    this.firstName,
    this.lastName,
    this.imageUrl,
  });

  String firstName;
  String lastName;
  String imageUrl;

  factory HistoryModelUserDetail.fromJson(Map<String, dynamic> json) => HistoryModelUserDetail(
    firstName: json["first_name"],
    lastName: json["last_name"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "image_url": imageUrl,
  };
}
