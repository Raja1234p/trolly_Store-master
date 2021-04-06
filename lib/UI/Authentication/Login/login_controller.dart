import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailtxt;
  TextEditingController passtxt;
  FocusNode emailNameFocus;
  FocusNode passNameFocus;
  FocusNode submit;
  TextEditingController resetPass;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailNameFocus = FocusNode();
    passNameFocus = FocusNode();
    submit = FocusNode();

    resetPass = TextEditingController();

    emailtxt = TextEditingController();
    passtxt = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailtxt.dispose();
    passtxt.dispose();
  }

  // passReset(String pass) async {
  //   var forgot = await Network().forgotPassword(pass);
  // }

}
