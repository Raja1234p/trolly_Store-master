import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/Controller/eachitemcontroller.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';
// ignore: must_be_immutable
class EachItems extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();
  final eachItemController = Get.put(EachItemController());

  @override
  Widget build(BuildContext context) {
    Orientation orientation =MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.mode_edit,color: constantWidget.whiteColor,size: 30,),
          )
        ],

      ),
      body: SafeArea(child: Column(
        children: [
          Container(
            width: orientation==Orientation.landscape?Get.width:Get.width,
            color: constantWidget.lightBlack.withOpacity(1),
            height: orientation==Orientation.landscape?Get.height*0.43:Get.height*0.24,
            child: Padding(
              padding: const EdgeInsets.only(left:100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  constantWidget.CustomText('Product Title', FontWeight.normal, constantWidget.greyColor, 15),
                  constantWidget.customTextField(eachItemController.productTitle),
                  SizedBox(height: Get.height*0.01,),

                  constantWidget.CustomText('Item Name', FontWeight.normal, constantWidget.greyColor, 15),
                  constantWidget.customTextField(eachItemController.productTitle),
                  SizedBox(height: Get.height*0.01,),
                  constantWidget.CustomText('Description', FontWeight.normal, constantWidget.greyColor, 15),
                  constantWidget.customTextField(eachItemController.productTitle),
                  SizedBox(height: Get.height*0.01,),
                ],
              ),
            ),
          ),
        ],
      )),

    );
  }
}
