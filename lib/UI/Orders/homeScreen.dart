import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/Controller/homescreencontroller.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/Account/accounts.dart';
import 'package:trolly_store/UI/Orders/deliveyWidgets.dart';
import 'package:trolly_store/UI/Orders/menuWidgets.dart';
import 'package:trolly_store/UI/Orders/schedule.dart';

import '../../constWidgets.dart';
import 'ASapTabBar.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();


  final List<Widget> bottomTabBarView = [
    ASAP(),
    Delivery(),
    Menu(),
    AccountScreen(),
  ];
  final homeScreenController = Get.put(HomeScreensController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:

      Obx(()=>
         BottomNavigationBar(
           unselectedItemColor: Colors.black12,
              fixedColor: constantWidget.blackColor ,
          onTap: homeScreenController.onItemTap,
          currentIndex: homeScreenController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.view_list_outlined),
            label: 'Orders'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood_rounded),
                label: 'Deliveries'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list),
                label: 'Menu'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),
                label: 'Account'
            ),

          ],
        ),
      ),
      body: Obx(()=> bottomTabBarView.elementAt(homeScreenController.selectedIndex.value )),
    );
  }
}
