import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Network/historynetwork.dart';
class HistoryController extends GetxController{

  TextEditingController startDate;
  TextEditingController endDate;
  RxBool showFilterPopUp = false.obs;
  HistoryNetwork network = HistoryNetwork();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startDate=TextEditingController(text: 'From');
    endDate=TextEditingController(text:'To');

    network.fetchHistory();

  }

  toggleFilterPopUp(){

    showFilterPopUp.value = showFilterPopUp.value==true?false:true;
  }

}