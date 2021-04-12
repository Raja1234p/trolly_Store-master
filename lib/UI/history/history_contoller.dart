import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:trolly_store/Model/history_model.dart';
import 'package:trolly_store/Network/historynetwork.dart';
import 'package:trolly_store/UI/history/orderhistory.dart';
class HistoryController extends GetxController{

  TextEditingController startDate;
  TextEditingController endDate;
  RxBool showFilterPopUp = false.obs;
  HistoryNetwork network = HistoryNetwork();
  OrderList orderList=OrderList();
  HistoryNetwork historyNetwork = HistoryNetwork();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startDate=TextEditingController(text: 'From');
    endDate=TextEditingController(text:'To');

    showHistory();

  }

  toggleFilterPopUp(){

    showFilterPopUp.value = showFilterPopUp.value==true?false:true;
  }
  var t = 'thhhh';

  showHistory() async{
   await  historyNetwork.fetchHistory();
   orderList=historyNetwork.orderList;
   final format = DateFormat('dd ${t} MMM yyyy').format(orderList.createdAt);

   print('historycontroller is working');
   print(format);

   update();
  }

}