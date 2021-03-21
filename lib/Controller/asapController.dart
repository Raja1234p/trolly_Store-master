
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AsapController extends GetxController with SingleGetTickerProviderMixin{

  TabController controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }



}