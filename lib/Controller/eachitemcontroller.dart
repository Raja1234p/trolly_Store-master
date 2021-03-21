import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EachItemController extends GetxController{
  TextEditingController productTitle;
  TextEditingController itemName;
  TextEditingController description;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    productTitle=TextEditingController(text: 'Baby & Toddler Food');
    itemName=TextEditingController(text: 'Nestle Cerelac baby Cereal');
    description=TextEditingController(text: '500 Grams');
  }


}