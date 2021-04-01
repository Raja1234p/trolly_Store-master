import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Controller/asapController.dart';
import 'package:trolly_store/UI/Orders/AsapWidget.dart';
import 'package:trolly_store/UI/Orders/schedule.dart';

import '../../constWidgets.dart';

class ASAP extends StatelessWidget {
  final asapController = Get.put(AsapController());

  ConstantWidget constantWidget = ConstantWidget();

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: constantWidget.CustomText(
            'Orders', FontWeight.normal, constantWidget.blackColor, 17),
        bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            controller: asapController.controller,
            labelColor: Colors.black,
            indicatorColor: constantWidget.redColor,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelColor: Colors.black12.withOpacity(0.2),
            unselectedLabelStyle: TextStyle(fontSize: 16),
            tabs: [Tab(child: Text('ASAP')), Tab(child: Text('Schedule'))]),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: TabBarView(controller: asapController.controller, children: [
        AsapWidegts(),
        Schedule(),
      ]),
    );
  }
}
