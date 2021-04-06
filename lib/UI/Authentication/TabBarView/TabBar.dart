
import 'package:flutter/material.dart';
// import 'package:first/Homepage/User/user_controller.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/Authentication/Login/Login_View.dart';
import 'package:trolly_store/UI/Authentication/Register/Register.dart';

import 'Tab_Controller.dart';
class MyTabbedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyTabController _tabx = Get.put(MyTabController());
    //final registercontroller = Get.lazyPut(()=>RegisterController());
   
    // final controllerHome = Get.put(UserHomePageController());
    
    // ↑ init tab controller
    
    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
              bottom: TabBar(
            controller: _tabx.controller,
            tabs: _tabx.myTabs,
            labelColor: Colors.black,
            indicatorColor: Colors.red,
            
          ),
      ),
      
      body: TabBarView(
        controller: _tabx.controller,
        children:
        [
          LoginView(),
          RegisterView()
        ]
      
      ),
    );
    }
    }