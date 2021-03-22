import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EachItemController extends GetxController{
  TextEditingController productTitle;
  TextEditingController itemName;
  TextEditingController description;

  TextEditingController price;
  TextEditingController priceWithoutOffer;
  TextEditingController tax;
  TextEditingController sequenceNumber;







  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    productTitle=TextEditingController(text: 'Baby & Todddler Food');
    itemName=TextEditingController(text: 'Nestle Cerelac baby Cereal');
    description=TextEditingController(text: '500 Grams');

    price=TextEditingController(text: '6.ssdfsd49');
    priceWithoutOffer=TextEditingController(text: '12');
    tax=TextEditingController(text: '0.0');
    sequenceNumber=TextEditingController(text: '12489');

  }


}