


import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
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

  // factory HistoryMode


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
  List<DateTime> dateTime;
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



}

class DateTime {
  DateTime({
    this.status,
    this.date,
  });

  int status;
  DateTime date;


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


}

class ProviderDetail {
  ProviderDetail();


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


}
