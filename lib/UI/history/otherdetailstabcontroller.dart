import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OtherDetailsController extends GetxController with SingleGetTickerProviderMixin{
  TabController tabController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController=TabController(length: 3, vsync: this,initialIndex: 0);
  }





}