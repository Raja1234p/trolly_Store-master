import 'package:get/get.dart';

class MenuController extends GetxController{

  RxBool switchValue=true.obs;

  selectSwitchValue(value){
    switchValue.value=value;
  }

}