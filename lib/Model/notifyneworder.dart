// To parse this JSON data, do
//
//     final notfifNewOrder = notfifNewOrderFromJson(jsonString);

import 'dart:convert';

NotfifNewOrder notfifNewOrderFromJson(String str) => NotfifNewOrder.fromJson(json.decode(str));

String notfifNewOrderToJson(NotfifNewOrder data) => json.encode(data.toJson());

class NotfifNewOrder {
  NotfifNewOrder({
    this.success,
    this.storeDetail,
    this.errorCode,
    this.settingDetail,
    this.scheduleOrderPushMessage,
  });

  bool success;
  StoreDetail storeDetail;
  int errorCode;
  SettingDetail settingDetail;
  String scheduleOrderPushMessage;

  factory NotfifNewOrder.fromJson(Map<String, dynamic> json) => NotfifNewOrder(
    success: json["success"],
    storeDetail: StoreDetail.fromJson(json["store_detail"]),
    errorCode: json["error_code"],
    settingDetail: SettingDetail.fromJson(json["setting_detail"]),
    scheduleOrderPushMessage: json["schedule_order_push_message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "store_detail": storeDetail.toJson(),
    "error_code": errorCode,
    "setting_detail": settingDetail.toJson(),
    "schedule_order_push_message": scheduleOrderPushMessage,
  };
}

class SettingDetail {
  SettingDetail({
    this.defaultSearchRadius,
    this.providerTimeout,
    this.storeTimeout,
    this.appName,
    this.scheduledRequestPreStartMinute,
    this.numberOfTryForScheduledRequest,
    this.adminName,
    this.isApplyImageSettings,
    this.isAllowContactlessDelivery,
    this.isAllowPickupOrderVerification,
    this.noOfLoopForSendRequest,
    this.isAskTimeWhenAcceptOrder,
    this.adminBaseUrl,
    this.userBaseUrl,
    this.storeBaseUrl,
    this.accessKeyId,
    this.secretKeyId,
    this.awsBucketName,
    this.isUseAwsBucket,
    this.isProviderEarningAddInWalletOnCashPayment,
    this.isStoreEarningAddInWalletOnCashPayment,
    this.isProviderEarningAddInWalletOnOtherPayment,
    this.isStoreEarningAddInWalletOnOtherPayment,
    this.isEmailIdFieldRequiredInUserRegister,
    this.isPhoneFieldRequiredInUserRegister,
    this.isEmailIdFieldRequiredInProviderRegister,
    this.isPhoneFieldRequiredInProviderRegister,
    this.isEmailIdFieldRequiredInStoreRegister,
    this.isPhoneFieldRequiredInStoreRegister,
    this.isConfirmationCodeRequiredAtPickupDelivery,
    this.isConfirmationCodeRequiredAtCompleteDelivery,
    this.isBusy,
    this.adminEmail,
    this.adminPhoneNumber,
    this.adminContactEmail,
    this.adminContactPhoneNumber,
    this.adminCountry,
    this.adminCurrencyCode,
    this.adminCurrency,
    this.adminTimeZone,
    this.adminPanelTimezone,
    this.lang,
    this.email,
    this.password,
    this.isReferralToUser,
    this.isReferralToProvider,
    this.isReferralToStore,
    this.isAllowUserToGiveTip,
    this.tipType,
    this.isShowOptionalFieldInUserRegister,
    this.isShowOptionalFieldInProviderRegister,
    this.isShowOptionalFieldInStoreRegister,
    this.isUploadUserDocuments,
    this.isUploadProviderDocuments,
    this.isUploadStoreDocuments,
    this.isSmsNotification,
    this.isMailNotification,
    this.isPushNotification,
    this.isUserMailVerification,
    this.isUserSmsVerification,
    this.isProviderMailVerification,
    this.isProviderSmsVerification,
    this.isStoreMailVerification,
    this.isStoreSmsVerification,
    this.isUserProfilePictureRequired,
    this.isProviderProfilePictureRequired,
    this.isStoreProfilePictureRequired,
    this.isUserLoginByEmail,
    this.isUserLoginByPhone,
    this.isUserLoginBySocial,
    this.isProviderLoginByEmail,
    this.isProviderLoginByPhone,
    this.isProviderLoginBySocial,
    this.isStoreLoginByEmail,
    this.isStoreLoginByPhone,
    this.isStoreLoginBySocial,
    this.type,
    this.projectId,
    this.privateKeyId,
    this.privateKey,
    this.clientEmail,
    this.clientId,
    this.authUri,
    this.tokenUri,
    this.authProviderX509CertUrl,
    this.clientX509CertUrl,
    this.databaseUrl,
    this.id,
    this.smsGatewayId,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  int defaultSearchRadius;
  int providerTimeout;
  int storeTimeout;
  String appName;
  int scheduledRequestPreStartMinute;
  int numberOfTryForScheduledRequest;
  String adminName;
  bool isApplyImageSettings;
  bool isAllowContactlessDelivery;
  bool isAllowPickupOrderVerification;
  int noOfLoopForSendRequest;
  bool isAskTimeWhenAcceptOrder;
  String adminBaseUrl;
  String userBaseUrl;
  String storeBaseUrl;
  String accessKeyId;
  String secretKeyId;
  String awsBucketName;
  bool isUseAwsBucket;
  bool isProviderEarningAddInWalletOnCashPayment;
  bool isStoreEarningAddInWalletOnCashPayment;
  bool isProviderEarningAddInWalletOnOtherPayment;
  bool isStoreEarningAddInWalletOnOtherPayment;
  bool isEmailIdFieldRequiredInUserRegister;
  bool isPhoneFieldRequiredInUserRegister;
  bool isEmailIdFieldRequiredInProviderRegister;
  bool isPhoneFieldRequiredInProviderRegister;
  bool isEmailIdFieldRequiredInStoreRegister;
  bool isPhoneFieldRequiredInStoreRegister;
  bool isConfirmationCodeRequiredAtPickupDelivery;
  bool isConfirmationCodeRequiredAtCompleteDelivery;
  bool isBusy;
  String adminEmail;
  String adminPhoneNumber;
  String adminContactEmail;
  String adminContactPhoneNumber;
  String adminCountry;
  String adminCurrencyCode;
  String adminCurrency;
  String adminTimeZone;
  String adminPanelTimezone;
  List<Lang> lang;
  String email;
  String password;
  bool isReferralToUser;
  bool isReferralToProvider;
  bool isReferralToStore;
  bool isAllowUserToGiveTip;
  int tipType;
  bool isShowOptionalFieldInUserRegister;
  bool isShowOptionalFieldInProviderRegister;
  bool isShowOptionalFieldInStoreRegister;
  bool isUploadUserDocuments;
  bool isUploadProviderDocuments;
  bool isUploadStoreDocuments;
  bool isSmsNotification;
  bool isMailNotification;
  bool isPushNotification;
  bool isUserMailVerification;
  bool isUserSmsVerification;
  bool isProviderMailVerification;
  bool isProviderSmsVerification;
  bool isStoreMailVerification;
  bool isStoreSmsVerification;
  bool isUserProfilePictureRequired;
  bool isProviderProfilePictureRequired;
  bool isStoreProfilePictureRequired;
  bool isUserLoginByEmail;
  bool isUserLoginByPhone;
  bool isUserLoginBySocial;
  bool isProviderLoginByEmail;
  bool isProviderLoginByPhone;
  bool isProviderLoginBySocial;
  bool isStoreLoginByEmail;
  bool isStoreLoginByPhone;
  bool isStoreLoginBySocial;
  String type;
  String projectId;
  String privateKeyId;
  String privateKey;
  String clientEmail;
  String clientId;
  String authUri;
  String tokenUri;
  String authProviderX509CertUrl;
  String clientX509CertUrl;
  String databaseUrl;
  String id;
  String smsGatewayId;
  int v;
  DateTime createdAt;
  DateTime updatedAt;

  factory SettingDetail.fromJson(Map<String, dynamic> json) => SettingDetail(
    defaultSearchRadius: json["default_search_radius"],
    providerTimeout: json["provider_timeout"],
    storeTimeout: json["store_timeout"],
    appName: json["app_name"],
    scheduledRequestPreStartMinute: json["scheduled_request_pre_start_minute"],
    numberOfTryForScheduledRequest: json["number_of_try_for_scheduled_request"],
    adminName: json["admin_name"],
    isApplyImageSettings: json["is_apply_image_settings"],
    isAllowContactlessDelivery: json["is_allow_contactless_delivery"],
    isAllowPickupOrderVerification: json["is_allow_pickup_order_verification"],
    noOfLoopForSendRequest: json["no_of_loop_for_send_request"],
    isAskTimeWhenAcceptOrder: json["is_ask_time_when_accept_order"],
    adminBaseUrl: json["admin_base_url"],
    userBaseUrl: json["user_base_url"],
    storeBaseUrl: json["store_base_url"],
    accessKeyId: json["access_key_id"],
    secretKeyId: json["secret_key_id"],
    awsBucketName: json["aws_bucket_name"],
    isUseAwsBucket: json["is_use_aws_bucket"],
    isProviderEarningAddInWalletOnCashPayment: json["is_provider_earning_add_in_wallet_on_cash_payment"],
    isStoreEarningAddInWalletOnCashPayment: json["is_store_earning_add_in_wallet_on_cash_payment"],
    isProviderEarningAddInWalletOnOtherPayment: json["is_provider_earning_add_in_wallet_on_other_payment"],
    isStoreEarningAddInWalletOnOtherPayment: json["is_store_earning_add_in_wallet_on_other_payment"],
    isEmailIdFieldRequiredInUserRegister: json["is_email_id_field_required_in_user_register"],
    isPhoneFieldRequiredInUserRegister: json["is_phone_field_required_in_user_register"],
    isEmailIdFieldRequiredInProviderRegister: json["is_email_id_field_required_in_provider_register"],
    isPhoneFieldRequiredInProviderRegister: json["is_phone_field_required_in_provider_register"],
    isEmailIdFieldRequiredInStoreRegister: json["is_email_id_field_required_in_store_register"],
    isPhoneFieldRequiredInStoreRegister: json["is_phone_field_required_in_store_register"],
    isConfirmationCodeRequiredAtPickupDelivery: json["is_confirmation_code_required_at_pickup_delivery"],
    isConfirmationCodeRequiredAtCompleteDelivery: json["is_confirmation_code_required_at_complete_delivery"],
    isBusy: json["is_busy"],
    adminEmail: json["admin_email"],
    adminPhoneNumber: json["admin_phone_number"],
    adminContactEmail: json["admin_contact_email"],
    adminContactPhoneNumber: json["admin_contact_phone_number"],
    adminCountry: json["admin_country"],
    adminCurrencyCode: json["admin_currency_code"],
    adminCurrency: json["admin_currency"],
    adminTimeZone: json["admin_time_zone"],
    adminPanelTimezone: json["admin_panel_timezone"],
    lang: List<Lang>.from(json["lang"].map((x) => Lang.fromJson(x))),
    email: json["email"],
    password: json["password"],
    isReferralToUser: json["is_referral_to_user"],
    isReferralToProvider: json["is_referral_to_provider"],
    isReferralToStore: json["is_referral_to_store"],
    isAllowUserToGiveTip: json["is_allow_user_to_give_tip"],
    tipType: json["tip_type"],
    isShowOptionalFieldInUserRegister: json["is_show_optional_field_in_user_register"],
    isShowOptionalFieldInProviderRegister: json["is_show_optional_field_in_provider_register"],
    isShowOptionalFieldInStoreRegister: json["is_show_optional_field_in_store_register"],
    isUploadUserDocuments: json["is_upload_user_documents"],
    isUploadProviderDocuments: json["is_upload_provider_documents"],
    isUploadStoreDocuments: json["is_upload_store_documents"],
    isSmsNotification: json["is_sms_notification"],
    isMailNotification: json["is_mail_notification"],
    isPushNotification: json["is_push_notification"],
    isUserMailVerification: json["is_user_mail_verification"],
    isUserSmsVerification: json["is_user_sms_verification"],
    isProviderMailVerification: json["is_provider_mail_verification"],
    isProviderSmsVerification: json["is_provider_sms_verification"],
    isStoreMailVerification: json["is_store_mail_verification"],
    isStoreSmsVerification: json["is_store_sms_verification"],
    isUserProfilePictureRequired: json["is_user_profile_picture_required"],
    isProviderProfilePictureRequired: json["is_provider_profile_picture_required"],
    isStoreProfilePictureRequired: json["is_store_profile_picture_required"],
    isUserLoginByEmail: json["is_user_login_by_email"],
    isUserLoginByPhone: json["is_user_login_by_phone"],
    isUserLoginBySocial: json["is_user_login_by_social"],
    isProviderLoginByEmail: json["is_provider_login_by_email"],
    isProviderLoginByPhone: json["is_provider_login_by_phone"],
    isProviderLoginBySocial: json["is_provider_login_by_social"],
    isStoreLoginByEmail: json["is_store_login_by_email"],
    isStoreLoginByPhone: json["is_store_login_by_phone"],
    isStoreLoginBySocial: json["is_store_login_by_social"],
    type: json["type"],
    projectId: json["project_id"],
    privateKeyId: json["private_key_id"],
    privateKey: json["private_key"],
    clientEmail: json["client_email"],
    clientId: json["client_id"],
    authUri: json["auth_uri"],
    tokenUri: json["token_uri"],
    authProviderX509CertUrl: json["auth_provider_x509_cert_url"],
    clientX509CertUrl: json["client_x509_cert_url"],
    databaseUrl: json["databaseURL"],
    id: json["_id"],
    smsGatewayId: json["sms_gateway_id"],
    v: json["__v"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "default_search_radius": defaultSearchRadius,
    "provider_timeout": providerTimeout,
    "store_timeout": storeTimeout,
    "app_name": appName,
    "scheduled_request_pre_start_minute": scheduledRequestPreStartMinute,
    "number_of_try_for_scheduled_request": numberOfTryForScheduledRequest,
    "admin_name": adminName,
    "is_apply_image_settings": isApplyImageSettings,
    "is_allow_contactless_delivery": isAllowContactlessDelivery,
    "is_allow_pickup_order_verification": isAllowPickupOrderVerification,
    "no_of_loop_for_send_request": noOfLoopForSendRequest,
    "is_ask_time_when_accept_order": isAskTimeWhenAcceptOrder,
    "admin_base_url": adminBaseUrl,
    "user_base_url": userBaseUrl,
    "store_base_url": storeBaseUrl,
    "access_key_id": accessKeyId,
    "secret_key_id": secretKeyId,
    "aws_bucket_name": awsBucketName,
    "is_use_aws_bucket": isUseAwsBucket,
    "is_provider_earning_add_in_wallet_on_cash_payment": isProviderEarningAddInWalletOnCashPayment,
    "is_store_earning_add_in_wallet_on_cash_payment": isStoreEarningAddInWalletOnCashPayment,
    "is_provider_earning_add_in_wallet_on_other_payment": isProviderEarningAddInWalletOnOtherPayment,
    "is_store_earning_add_in_wallet_on_other_payment": isStoreEarningAddInWalletOnOtherPayment,
    "is_email_id_field_required_in_user_register": isEmailIdFieldRequiredInUserRegister,
    "is_phone_field_required_in_user_register": isPhoneFieldRequiredInUserRegister,
    "is_email_id_field_required_in_provider_register": isEmailIdFieldRequiredInProviderRegister,
    "is_phone_field_required_in_provider_register": isPhoneFieldRequiredInProviderRegister,
    "is_email_id_field_required_in_store_register": isEmailIdFieldRequiredInStoreRegister,
    "is_phone_field_required_in_store_register": isPhoneFieldRequiredInStoreRegister,
    "is_confirmation_code_required_at_pickup_delivery": isConfirmationCodeRequiredAtPickupDelivery,
    "is_confirmation_code_required_at_complete_delivery": isConfirmationCodeRequiredAtCompleteDelivery,
    "is_busy": isBusy,
    "admin_email": adminEmail,
    "admin_phone_number": adminPhoneNumber,
    "admin_contact_email": adminContactEmail,
    "admin_contact_phone_number": adminContactPhoneNumber,
    "admin_country": adminCountry,
    "admin_currency_code": adminCurrencyCode,
    "admin_currency": adminCurrency,
    "admin_time_zone": adminTimeZone,
    "admin_panel_timezone": adminPanelTimezone,
    "lang": List<dynamic>.from(lang.map((x) => x.toJson())),
    "email": email,
    "password": password,
    "is_referral_to_user": isReferralToUser,
    "is_referral_to_provider": isReferralToProvider,
    "is_referral_to_store": isReferralToStore,
    "is_allow_user_to_give_tip": isAllowUserToGiveTip,
    "tip_type": tipType,
    "is_show_optional_field_in_user_register": isShowOptionalFieldInUserRegister,
    "is_show_optional_field_in_provider_register": isShowOptionalFieldInProviderRegister,
    "is_show_optional_field_in_store_register": isShowOptionalFieldInStoreRegister,
    "is_upload_user_documents": isUploadUserDocuments,
    "is_upload_provider_documents": isUploadProviderDocuments,
    "is_upload_store_documents": isUploadStoreDocuments,
    "is_sms_notification": isSmsNotification,
    "is_mail_notification": isMailNotification,
    "is_push_notification": isPushNotification,
    "is_user_mail_verification": isUserMailVerification,
    "is_user_sms_verification": isUserSmsVerification,
    "is_provider_mail_verification": isProviderMailVerification,
    "is_provider_sms_verification": isProviderSmsVerification,
    "is_store_mail_verification": isStoreMailVerification,
    "is_store_sms_verification": isStoreSmsVerification,
    "is_user_profile_picture_required": isUserProfilePictureRequired,
    "is_provider_profile_picture_required": isProviderProfilePictureRequired,
    "is_store_profile_picture_required": isStoreProfilePictureRequired,
    "is_user_login_by_email": isUserLoginByEmail,
    "is_user_login_by_phone": isUserLoginByPhone,
    "is_user_login_by_social": isUserLoginBySocial,
    "is_provider_login_by_email": isProviderLoginByEmail,
    "is_provider_login_by_phone": isProviderLoginByPhone,
    "is_provider_login_by_social": isProviderLoginBySocial,
    "is_store_login_by_email": isStoreLoginByEmail,
    "is_store_login_by_phone": isStoreLoginByPhone,
    "is_store_login_by_social": isStoreLoginBySocial,
    "type": type,
    "project_id": projectId,
    "private_key_id": privateKeyId,
    "private_key": privateKey,
    "client_email": clientEmail,
    "client_id": clientId,
    "auth_uri": authUri,
    "token_uri": tokenUri,
    "auth_provider_x509_cert_url": authProviderX509CertUrl,
    "client_x509_cert_url": clientX509CertUrl,
    "databaseURL": databaseUrl,
    "_id": id,
    "sms_gateway_id": smsGatewayId,
    "__v": v,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class Lang {
  Lang({
    this.name,
    this.code,
    this.stringFilePath,
    this.isVisible,
  });

  String name;
  String code;
  String stringFilePath;
  bool isVisible;

  factory Lang.fromJson(Map<String, dynamic> json) => Lang(
    name: json["name"],
    code: json["code"],
    stringFilePath: json["string_file_path"],
    isVisible: json["is_visible"] == null ? null : json["is_visible"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code,
    "string_file_path": stringFilePath,
    "is_visible": isVisible == null ? null : isVisible,
  };
}

class StoreDetail {
  StoreDetail({
    this.customerId,
    this.paymentIntentId,
    this.name,
    this.deliveryLocations,
    this.email,
    this.countryPhoneCode,
    this.phone,
    this.socialIds,
    this.password,
    this.address,
    this.imageUrl,
    this.priceRating,
    this.isStoreBusy,
    this.isBusiness,
    this.isApproved,
    this.isEmailVerified,
    this.isPhoneNumberVerified,
    this.isDocumentUploaded,
    this.isUseItemTax,
    this.itemTax,
    this.minOrderPrice,
    this.maxItemQuantityAddByUser,
    this.isOrderCancellationChargeApply,
    this.orderCancellationChargeForAboveOrderPrice,
    this.orderCancellationChargeType,
    this.orderCancellationChargeValue,
    this.isTakingScheduleOrder,
    this.informScheduleOrderBeforeMin,
    this.scheduleOrderCreateAfterMinute,
    this.isAskEstimatedTimeForReadyOrder,
    this.isProvidePickupDelivery,
    this.isProvideDeliveryAnywhere,
    this.deliveryRadius,
    this.isStorePayDeliveryFees,
    this.freeDeliveryForAboveOrderPrice,
    this.freeDeliveryWithinRadius,
    this.deliveryTime,
    this.deliveryTimeMax,
    this.userRate,
    this.userRateCount,
    this.providerRate,
    this.providerRateCount,
    this.adminProfitModeOnStore,
    this.adminProfitValueOnStore,
    this.isVisible,
    this.wallet,
    this.walletCurrencyCode,
    this.bankId,
    this.accountId,
    this.isStoreCanAddProvider,
    this.isStoreCanCompleteOrder,
    this.storeTime,
    this.isStoreSetScheduleDeliveryTime,
    this.storeDeliveryTime,
    this.websiteUrl,
    this.slogan,
    this.branchioUrl,
    this.offers,
    this.famousProductsTags,
    this.languagesSupported,
    this.comments,
    this.referralCode,
    this.totalReferrals,
    this.isReferral,
    this.deviceToken,
    this.deviceType,
    this.serverToken,
    this.loginBy,
    this.appVersion,
    this.id,
    this.bannerUrl,
    this.storeType,
    this.adminType,
    this.storeTypeId,
    this.storeDeliveryId,
    this.countryId,
    this.cityId,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.uniqueId,
    this.v,
  });

  String customerId;
  String paymentIntentId;
  List<String> name;
  List<dynamic> deliveryLocations;
  String email;
  String countryPhoneCode;
  String phone;
  List<dynamic> socialIds;
  String password;
  String address;
  String imageUrl;
  int priceRating;
  bool isStoreBusy;
  bool isBusiness;
  bool isApproved;
  bool isEmailVerified;
  bool isPhoneNumberVerified;
  bool isDocumentUploaded;
  bool isUseItemTax;
  int itemTax;
  int minOrderPrice;
  int maxItemQuantityAddByUser;
  bool isOrderCancellationChargeApply;
  int orderCancellationChargeForAboveOrderPrice;
  int orderCancellationChargeType;
  int orderCancellationChargeValue;
  bool isTakingScheduleOrder;
  int informScheduleOrderBeforeMin;
  int scheduleOrderCreateAfterMinute;
  bool isAskEstimatedTimeForReadyOrder;
  bool isProvidePickupDelivery;
  bool isProvideDeliveryAnywhere;
  int deliveryRadius;
  bool isStorePayDeliveryFees;
  int freeDeliveryForAboveOrderPrice;
  int freeDeliveryWithinRadius;
  int deliveryTime;
  int deliveryTimeMax;
  int userRate;
  int userRateCount;
  int providerRate;
  int providerRateCount;
  int adminProfitModeOnStore;
  int adminProfitValueOnStore;
  bool isVisible;
  int wallet;
  String walletCurrencyCode;
  String bankId;
  String accountId;
  bool isStoreCanAddProvider;
  bool isStoreCanCompleteOrder;
  List<StoreTime> storeTime;
  bool isStoreSetScheduleDeliveryTime;
  List<StoreTime> storeDeliveryTime;
  String websiteUrl;
  String slogan;
  String branchioUrl;
  List<dynamic> offers;
  List<List<String>> famousProductsTags;
  List<Lang> languagesSupported;
  String comments;
  String referralCode;
  int totalReferrals;
  bool isReferral;
  String deviceToken;
  String deviceType;
  String serverToken;
  String loginBy;
  String appVersion;
  String id;
  String bannerUrl;
  int storeType;
  int adminType;
  dynamic storeTypeId;
  String storeDeliveryId;
  String countryId;
  String cityId;
  List<double> location;
  DateTime createdAt;
  DateTime updatedAt;
  int uniqueId;
  int v;

  factory StoreDetail.fromJson(Map<String, dynamic> json) => StoreDetail(
    customerId: json["customer_id"],
    paymentIntentId: json["payment_intent_id"],
    name: List<String>.from(json["name"].map((x) => x)),
    deliveryLocations: List<dynamic>.from(json["delivery_locations"].map((x) => x)),
    email: json["email"],
    countryPhoneCode: json["country_phone_code"],
    phone: json["phone"],
    socialIds: List<dynamic>.from(json["social_ids"].map((x) => x)),
    password: json["password"],
    address: json["address"],
    imageUrl: json["image_url"],
    priceRating: json["price_rating"],
    isStoreBusy: json["is_store_busy"],
    isBusiness: json["is_business"],
    isApproved: json["is_approved"],
    isEmailVerified: json["is_email_verified"],
    isPhoneNumberVerified: json["is_phone_number_verified"],
    isDocumentUploaded: json["is_document_uploaded"],
    isUseItemTax: json["is_use_item_tax"],
    itemTax: json["item_tax"],
    minOrderPrice: json["min_order_price"],
    maxItemQuantityAddByUser: json["max_item_quantity_add_by_user"],
    isOrderCancellationChargeApply: json["is_order_cancellation_charge_apply"],
    orderCancellationChargeForAboveOrderPrice: json["order_cancellation_charge_for_above_order_price"],
    orderCancellationChargeType: json["order_cancellation_charge_type"],
    orderCancellationChargeValue: json["order_cancellation_charge_value"],
    isTakingScheduleOrder: json["is_taking_schedule_order"],
    informScheduleOrderBeforeMin: json["inform_schedule_order_before_min"],
    scheduleOrderCreateAfterMinute: json["schedule_order_create_after_minute"],
    isAskEstimatedTimeForReadyOrder: json["is_ask_estimated_time_for_ready_order"],
    isProvidePickupDelivery: json["is_provide_pickup_delivery"],
    isProvideDeliveryAnywhere: json["is_provide_delivery_anywhere"],
    deliveryRadius: json["delivery_radius"],
    isStorePayDeliveryFees: json["is_store_pay_delivery_fees"],
    freeDeliveryForAboveOrderPrice: json["free_delivery_for_above_order_price"],
    freeDeliveryWithinRadius: json["free_delivery_within_radius"],
    deliveryTime: json["delivery_time"],
    deliveryTimeMax: json["delivery_time_max"],
    userRate: json["user_rate"],
    userRateCount: json["user_rate_count"],
    providerRate: json["provider_rate"],
    providerRateCount: json["provider_rate_count"],
    adminProfitModeOnStore: json["admin_profit_mode_on_store"],
    adminProfitValueOnStore: json["admin_profit_value_on_store"],
    isVisible: json["is_visible"],
    wallet: json["wallet"],
    walletCurrencyCode: json["wallet_currency_code"],
    bankId: json["bank_id"],
    accountId: json["account_id"],
    isStoreCanAddProvider: json["is_store_can_add_provider"],
    isStoreCanCompleteOrder: json["is_store_can_complete_order"],
    storeTime: List<StoreTime>.from(json["store_time"].map((x) => StoreTime.fromJson(x))),
    isStoreSetScheduleDeliveryTime: json["is_store_set_schedule_delivery_time"],
    storeDeliveryTime: List<StoreTime>.from(json["store_delivery_time"].map((x) => StoreTime.fromJson(x))),
    websiteUrl: json["website_url"],
    slogan: json["slogan"],
    branchioUrl: json["branchio_url"],
    offers: List<dynamic>.from(json["offers"].map((x) => x)),
    famousProductsTags: List<List<String>>.from(json["famous_products_tags"].map((x) => List<String>.from(x.map((x) => x)))),
    languagesSupported: List<Lang>.from(json["languages_supported"].map((x) => Lang.fromJson(x))),
    comments: json["comments"],
    referralCode: json["referral_code"],
    totalReferrals: json["total_referrals"],
    isReferral: json["is_referral"],
    deviceToken: json["device_token"],
    deviceType: json["device_type"],
    serverToken: json["server_token"],
    loginBy: json["login_by"],
    appVersion: json["app_version"],
    id: json["_id"],
    bannerUrl: json["banner_url"],
    storeType: json["store_type"],
    adminType: json["admin_type"],
    storeTypeId: json["store_type_id"],
    storeDeliveryId: json["store_delivery_id"],
    countryId: json["country_id"],
    cityId: json["city_id"],
    location: List<double>.from(json["location"].map((x) => x.toDouble())),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    uniqueId: json["unique_id"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "customer_id": customerId,
    "payment_intent_id": paymentIntentId,
    "name": List<dynamic>.from(name.map((x) => x)),
    "delivery_locations": List<dynamic>.from(deliveryLocations.map((x) => x)),
    "email": email,
    "country_phone_code": countryPhoneCode,
    "phone": phone,
    "social_ids": List<dynamic>.from(socialIds.map((x) => x)),
    "password": password,
    "address": address,
    "image_url": imageUrl,
    "price_rating": priceRating,
    "is_store_busy": isStoreBusy,
    "is_business": isBusiness,
    "is_approved": isApproved,
    "is_email_verified": isEmailVerified,
    "is_phone_number_verified": isPhoneNumberVerified,
    "is_document_uploaded": isDocumentUploaded,
    "is_use_item_tax": isUseItemTax,
    "item_tax": itemTax,
    "min_order_price": minOrderPrice,
    "max_item_quantity_add_by_user": maxItemQuantityAddByUser,
    "is_order_cancellation_charge_apply": isOrderCancellationChargeApply,
    "order_cancellation_charge_for_above_order_price": orderCancellationChargeForAboveOrderPrice,
    "order_cancellation_charge_type": orderCancellationChargeType,
    "order_cancellation_charge_value": orderCancellationChargeValue,
    "is_taking_schedule_order": isTakingScheduleOrder,
    "inform_schedule_order_before_min": informScheduleOrderBeforeMin,
    "schedule_order_create_after_minute": scheduleOrderCreateAfterMinute,
    "is_ask_estimated_time_for_ready_order": isAskEstimatedTimeForReadyOrder,
    "is_provide_pickup_delivery": isProvidePickupDelivery,
    "is_provide_delivery_anywhere": isProvideDeliveryAnywhere,
    "delivery_radius": deliveryRadius,
    "is_store_pay_delivery_fees": isStorePayDeliveryFees,
    "free_delivery_for_above_order_price": freeDeliveryForAboveOrderPrice,
    "free_delivery_within_radius": freeDeliveryWithinRadius,
    "delivery_time": deliveryTime,
    "delivery_time_max": deliveryTimeMax,
    "user_rate": userRate,
    "user_rate_count": userRateCount,
    "provider_rate": providerRate,
    "provider_rate_count": providerRateCount,
    "admin_profit_mode_on_store": adminProfitModeOnStore,
    "admin_profit_value_on_store": adminProfitValueOnStore,
    "is_visible": isVisible,
    "wallet": wallet,
    "wallet_currency_code": walletCurrencyCode,
    "bank_id": bankId,
    "account_id": accountId,
    "is_store_can_add_provider": isStoreCanAddProvider,
    "is_store_can_complete_order": isStoreCanCompleteOrder,
    "store_time": List<dynamic>.from(storeTime.map((x) => x.toJson())),
    "is_store_set_schedule_delivery_time": isStoreSetScheduleDeliveryTime,
    "store_delivery_time": List<dynamic>.from(storeDeliveryTime.map((x) => x.toJson())),
    "website_url": websiteUrl,
    "slogan": slogan,
    "branchio_url": branchioUrl,
    "offers": List<dynamic>.from(offers.map((x) => x)),
    "famous_products_tags": List<dynamic>.from(famousProductsTags.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "languages_supported": List<dynamic>.from(languagesSupported.map((x) => x.toJson())),
    "comments": comments,
    "referral_code": referralCode,
    "total_referrals": totalReferrals,
    "is_referral": isReferral,
    "device_token": deviceToken,
    "device_type": deviceType,
    "server_token": serverToken,
    "login_by": loginBy,
    "app_version": appVersion,
    "_id": id,
    "banner_url": bannerUrl,
    "store_type": storeType,
    "admin_type": adminType,
    "store_type_id": storeTypeId,
    "store_delivery_id": storeDeliveryId,
    "country_id": countryId,
    "city_id": cityId,
    "location": List<dynamic>.from(location.map((x) => x)),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "unique_id": uniqueId,
    "__v": v,
  };
}

class StoreTime {
  StoreTime({
    this.isStoreOpen,
    this.isStoreOpenFullTime,
    this.day,
    this.dayTime,
  });

  bool isStoreOpen;
  bool isStoreOpenFullTime;
  int day;
  List<DayTime> dayTime;

  factory StoreTime.fromJson(Map<String, dynamic> json) => StoreTime(
    isStoreOpen: json["is_store_open"],
    isStoreOpenFullTime: json["is_store_open_full_time"],
    day: json["day"],
    dayTime: List<DayTime>.from(json["day_time"].map((x) => DayTime.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "is_store_open": isStoreOpen,
    "is_store_open_full_time": isStoreOpenFullTime,
    "day": day,
    "day_time": List<dynamic>.from(dayTime.map((x) => x.toJson())),
  };
}

class DayTime {
  DayTime({
    this.storeOpenTime,
    this.storeCloseTime,
  });

  String storeOpenTime;
  StoreCloseTime storeCloseTime;

  factory DayTime.fromJson(Map<String, dynamic> json) => DayTime(
    storeOpenTime: json["store_open_time"],
    storeCloseTime: storeCloseTimeValues.map[json["store_close_time"]],
  );

  Map<String, dynamic> toJson() => {
    "store_open_time": storeOpenTime,
    "store_close_time": storeCloseTimeValues.reverse[storeCloseTime],
  };
}

enum StoreCloseTime { THE_1700, THE_1800, THE_1900, THE_1915, THE_1740 }

final storeCloseTimeValues = EnumValues({
  "17:00": StoreCloseTime.THE_1700,
  "17:40": StoreCloseTime.THE_1740,
  "18:00": StoreCloseTime.THE_1800,
  "19:00": StoreCloseTime.THE_1900,
  "19:15": StoreCloseTime.THE_1915
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
