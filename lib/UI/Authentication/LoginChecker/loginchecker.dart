import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trolly_store/Network/Network.dart';

class LoginChecker extends GetxController{



  checkLoggedIn() async{
    Network network = Network();
    await network.getUserDetails();

 
}

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLoggedIn();
  }
}