import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../constWidgets.dart';

class AddCategoryController extends GetxController{
  ConstantWidget constantWidget = ConstantWidget();
  TextEditingController categoryTitle;
  TextEditingController sequenceNumber;
  TextEditingController dialogueTextField;
  RxBool checkBox =false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    categoryTitle=TextEditingController();
    sequenceNumber=TextEditingController();
    dialogueTextField=TextEditingController();
  }


}