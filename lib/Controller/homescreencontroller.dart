import 'package:get/get.dart';

class HomeScreensController extends GetxController{


  var selectedIndex=0.obs;

  void onItemTap(int index){
    selectedIndex.value=index;
    update();

  }

}