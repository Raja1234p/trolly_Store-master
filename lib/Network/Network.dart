import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/UI/Authentication/Register/register_controller.dart';



class Network {
var baseUrl ='https://app.trolleymate.co.uk/api/store/';



  Future userLogout() async {
    Dio dio = Dio();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['lang'] = 0;
    var formData = {
      "user_id": sharedPreferences.get('userId'),
      "server_token": sharedPreferences.get('serverToken')
    };
    var response = await dio.post(baseUrl + "logout", data: formData);
    if (response.statusCode == 200) {
      print(response.data);
      sharedPreferences.clear();
      // Get.off(Homepage());
      //Get.to(()=>Homepage() );
      // print(statusCodeForLoguot);
    } else {
      throw Exception("Could not logout");
    }
  }

  Future getUserDetails() async {
    // var saveUserId;
    // var saveServerToken;

    Dio dio = Dio();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var serverTokens = sharedPreferences.getString("serverToken");
    var userIds = sharedPreferences.getString("userId");

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['lang'] = 0;

    var formData = {"user_id": userIds, "server_token": serverTokens};
    var response = await dio.post(baseUrl + "get_detail", data: formData);
    // var jsonData = response.data;
    if (response.statusCode == 200) {
      try {
        // saveUserId = jsonData['user']['_id'].toString();
        // saveServerToken = jsonData['user']['server_token'].toString();
        // UserModel userDetails = UserModel.fromJson(response.data);
        // User user = userDetails.user;
        // userInfo = user;
        // print(userInfo);
        //print('response ${jsonData['success']}');
        //print(saveServerToken);
        print('Login');
      } catch (e) {
        print(response.data);
        sharedPreferences.clear();
        // Get.off(Homepage());
        print('LogOUt');
      }
    } else {
      print("Could not load user details");
    }
  }

  RegisterController controller = Get.put(RegisterController());
  Future registeration(
      String name,
      String lastname,
      String email,
      String address,
      String city,
      String password,
      String phoneNumber,
      String countryCode) async {
    Dio dio = new Dio();

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['lang'] = 0;
    var data = {
      "phone": phoneNumber,
      "password": password,
      "cart_unique_token": 'cartUniqueToken',
      "country_id": "5f733d3625966065868918af",
      "city": city,
      "social_id": "",
      "login_by": "manual",
      "country_phone_code": countryCode,
      "first_name": name,
      "last_name": lastname,
      "email": email,
      "address": address,
      "referral_code": "",
      "is_phone_number_verified": false,
      "is_email_verified": false
    };
    // "https://app.trolleymate.co.uk/api/user/register"

    var response = await dio.post(
      baseUrl + "register",
      data: data,
    );

    if (response.statusCode == 200) {
      controller.circular.value = true;

      var jsonData = response.data;
      if (jsonData['error_code'] == 503) {
        controller.circular.value = false;

        Fluttertoast.showToast(msg: 'phone number already exist');

        print(response.data);
      } else if (jsonData['error_code'] == 502) {
        controller.circular.value = false;
        Fluttertoast.showToast(msg: 'Email Already Registered');
      } else {
        Fluttertoast.showToast(msg: 'Registered Successfully');
        controller.circular.value = true;

        // Get.to(() => LoginView());

        controller.fName.clear();
        controller.lName.clear();
        controller.emailtxt.clear();
        controller.addtxt.clear();
        controller.citytxt.clear();
        controller.passtxt.clear();
        controller.phonetxt.clear();
        controller.countryCode.clear();
        controller.cnftxt.clear();
        controller.countrytxt.clear();
      }
      print(response.data);
    } else {
      print('Error');
      Get.back();
    }
  }



  // ProfileController profileController = Get.put(ProfileController());
  // List<Users> _list = [];
  // Future updateProfile(
  //     String fName,
  //     String lName,
  //     String newPassword,
  //     String phoneNumber,
  //     String email,
  //     String oldPassword,
  //     String tokenid,
  //     String userid) async {
  //   Dio dio = Dio();
  //   dio.options.headers['Content-Type'] = 'application/json';
  //   dio.options.headers['lang'] = 0;
  //   var data = {
  //     "user_id": userid,
  //     "server_token": tokenid,
  //     "phone": phoneNumber,
  //     "email": email,
  //     "new_password": newPassword,
  //     "first_name": fName,
  //     "last_name": lName,
  //     "social_id": "",
  //     "login_by": "manual",
  //     "old_password": oldPassword
  //   };
  //
  //   //print("2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222");
  //   print("this is new password updated ok${newPassword}");
  //   var response = await dio.post(baseUrl + "update", data: data);
  //   if (response.statusCode == 200) {
  //     print(response.data);
  //     var jsonData = response.data;
  //     if (jsonData['error_code'] == 513) {
  //       Fluttertoast.showToast(msg: 'Invalid password');
  //       print('error');
  //     } else {
  //       try {
  //         var userModels = UpdatedProfile.fromJson(jsonData);
  //         //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //         Users users = userModels.user;
  //         _list.add(users);
  //
  //         for (int i = 0; i <= _list.length - 1; i++) {
  //           profileController.fName.text = _list[i].firstName;
  //           profileController.lName.text = _list[i].lastName;
  //           profileController.emailtxt.text = _list[i].email;
  //           profileController.countryCode.text = _list[i].countryPhoneCode;
  //           profileController.phonetxt.text = _list[i].phone;
  //           profileController.addtxt.text = _list[i].address;
  //
  //           print(
  //               " this is updated password it is called old password ok${_list[i].password}");
  //         }
  //         print(profileController.fName.text.toString());
  //         profileController.passtxt.clear();
  //         Fluttertoast.showToast(msg: 'Profile Updated Successfully');
  //
  //         print(response.data);
  //       } catch (e) {
  //         Fluttertoast.showToast(msg: 'Not Updated');
  //       }
  //     }
  //   } else {
  //     Fluttertoast.showToast(msg: 'error');
  //   }
  // }

}
