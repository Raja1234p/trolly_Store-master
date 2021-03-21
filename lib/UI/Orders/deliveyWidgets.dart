import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constWidgets.dart';
// ignore: must_be_immutable
class Delivery extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();

  @override
  Widget build(BuildContext context) {
    Orientation orientation =MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Deliveries',style: TextStyle(color: constantWidget.blackColor),),
        centerTitle: true,
        backgroundColor: constantWidget.whiteColor,
      ),
      body:  SafeArea(
        child: ListView.separated(
            itemCount: 10,

            separatorBuilder: (context, index) {
              return Divider(height: 2,);
            },

            itemBuilder: (context,int index){
              return Container(
                color: Colors.white,
                width: Get.width,
                height: orientation==Orientation.portrait? Get.height*0.13:Get.height*0.28,
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

                            constantWidget.CustomText('Deliveryman not found', FontWeight.normal, constantWidget.redColor, 13),
                            Container(
                              color: constantWidget.redColor,
                              width: Get.width*0.3,
                              height: Get.height*0.037,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  constantWidget.CustomText('hello', FontWeight.normal, constantWidget.whiteColor, 15),
                                  constantWidget.CustomText('hello', FontWeight.normal, constantWidget.whiteColor, 15)

                                ],
                              ),
                            )
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