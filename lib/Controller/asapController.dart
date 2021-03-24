
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Model/getorders.dart';
import 'package:trolly_store/Network/ordernetwork.dart';
import 'package:url_launcher/url_launcher.dart';
class AsapController extends GetxController with SingleGetTickerProviderMixin{

  TabController controller;
  // var getOrder = GetOrders();
  var getorder= List<Order>().obs;






  void Getorderlist() async{
    OrderNetwork network = OrderNetwork();
    await network.toShowOrder();
    getorder.value=network.getorder;


    print(" this is controller class${getorder[0].uniqueId}");



  }



  @override
  void onInit() {
    // getData();
    // OrderNetwork.Orders();
    super.onInit();
    controller = TabController(vsync: this, length: 2);
    Getorderlist();




    // OrderNetwork().Orders();
  }

  // Future getData()async{
  //   getOrder = await OrderNetwork.Orders();
  //   print(getOrder.orders[0].uniqueId);
  // }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }



}