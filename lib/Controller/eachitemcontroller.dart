import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EachItemController extends GetxController{
  TextEditingController productTitle;
  TextEditingController itemName;
  TextEditingController description;
FocusNode focusNodeItemName;
  TextEditingController price;
  TextEditingController priceWithoutOffer;
  TextEditingController tax;
  TextEditingController sequenceNumber;
RxString name='sdfsds'.obs;
  FocusNode focusNodePrice;
  FocusNode focusNodePriceWithoutOffer;
  FocusNode focusNodeTax;
  FocusNode focusNodeSequence;

RxBool checkIteName=false.obs;
  RxBool checkDescription=false.obs;


  var isCheckon = false.obs;

  RxBool enableEdit =false.obs;

  RxBool test =true.obs;


  RxBool stockOrOutOfStcok =false.obs;

  togglestockOrOutOfStcok(){
    stockOrOutOfStcok.value = stockOrOutOfStcok.value == true ? false : true;
    update();
  }



  setCheck(){
    isCheckon.value = isCheckon.value == true ? false : true;
    update();
  }

  toggleEdit(){
    enableEdit.value = enableEdit.value == true ? false : true;
    update();
  }




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
focusNodeItemName =FocusNode();
    productTitle=TextEditingController(text: 'Baby & Todddler Food');
    itemName=TextEditingController(text: 'Nestle Cerelac baby Cereal');
    description=TextEditingController(text: '500 Grams');

    price=TextEditingController(text: '6.ssdfsd49');
    priceWithoutOffer=TextEditingController(text: '12');
    tax=TextEditingController(text: '0.0');
    sequenceNumber=TextEditingController(text: '12489');

    focusNodePrice =FocusNode();
    focusNodePriceWithoutOffer =FocusNode();
    focusNodeTax =FocusNode();
    focusNodeSequence =FocusNode();


  }


}