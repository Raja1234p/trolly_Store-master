import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Model/getorders.dart';
import 'package:trolly_store/Model/notifyneworder.dart';
import 'package:trolly_store/Network/ordernetwork.dart';
import 'package:url_launcher/url_launcher.dart';

class AsapController extends GetxController with SingleGetTickerProviderMixin {
  TabController controller;
  var add1 = ''.obs;
  // var getOrder = GetOrders();
  var getorder = List<Order>().obs;
  NotfifNewOrder notfifNewOrder;
  var storeDetails = StoreDetail().obs;
  List<double> location = List<double>().obs;
  OrderNetwork network = OrderNetwork();

  getAddress() async {
    getAddress() async {
      location.forEach((element) {
        print(element);
      });
    }
  }

  void Getorderlist() async {
    await network.toShowOrder();

    getorder.value = network.getorder;
  }

  void nofifyNewOrder() async {
    await network.notifyNewOrders();
    storeDetails.value = network.storeDetail;
    location = network.list;

    for (int i = 0; i < location.length; i++) {
      print("This is location ${location[i]}");

      final coordinates = Coordinates(location[0], location[1]);
      var address =
          await Geocoder.local.findAddressesFromCoordinates(coordinates);
      add1.value = address.first.addressLine;
      // print("This is address ${add1.value}");
    }

    // print(storeDetails.value);
    // print("ldf");
    // print(location);
  }

  getUserAddress() {}

  @override
  void onInit() {
    // getData();
    // OrderNetwork.Orders();
    super.onInit();
    controller = TabController(vsync: this, length: 2);
    Getorderlist();
    nofifyNewOrder();
    getUserAddress();

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
