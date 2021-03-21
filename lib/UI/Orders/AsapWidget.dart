import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';
class AsapWidegts extends StatelessWidget {

  ConstantWidget constantWidget = ConstantWidget();

  @override
  Widget build(BuildContext context) {
Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body:
      SafeArea(
        child: ListView.separated(
          itemCount: 10,

            separatorBuilder: (context, index) {
              return Divider(height: 2,);
            },

          itemBuilder: (context,int index){
            return Container(
              color: Colors.white,
              width: Get.width,
              height: orientation==Orientation.portrait? Get.height*0.12:Get.height*0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(

                    dense: true,
                    leading:Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: CircleAvatar(

                        backgroundColor: Colors.green,
                      ),
                    ),
                    title: Column(
                      children:[ Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstantWidget().CustomText('Sahib Developer', FontWeight.bold, constantWidget.blackColor,15 ),
                          ConstantWidget().CustomText('E12.98', FontWeight.bold, constantWidget.blackColor,15 ),
                        ],
                      ),
                        SizedBox(height: Get.height*0.01,),
                    ]),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        constantWidget.CustomText('Order No. #119', FontWeight.normal, constantWidget.greyColor, 13),
                        Spacer(),
                        Icon(Icons.phone),
                        SizedBox(width: Get.width*0.017,),
                        Icon(Icons.stay_current_landscape)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left:16.0,right: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          constantWidget.CustomText('Order ready', FontWeight.normal, constantWidget.redColor, 13),
                          Icon(Icons.bike_scooter,color: constantWidget.redColor,)
                        ],),
                    ),
                  ),

                ],
              ),
            );

          }

            ),
      ),
    );
  }
}
