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
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: orientation==Orientation.landscape?Size.fromHeight(Get.height*0.6):Size.fromHeight(Get.height*0.3),
        child: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: Container(
              width:
                  orientation == Orientation.landscape ? Get.width : Get.width,
              color: constantWidget.lightBlack.withOpacity(1),
              height: orientation == Orientation.landscape
                  ? Get.height * 0.44
                  : Get.height * 0.24,
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    constantWidget.CustomText('Product Title',
                        FontWeight.normal, constantWidget.greyColor, 15),
                    constantWidget
                        .customTextField(eachItemController.productTitle,),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    constantWidget.CustomText('Item Name', FontWeight.normal,
                        constantWidget.greyColor, 15),
                    constantWidget
                        .customTextField(eachItemController.productTitle,),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    constantWidget.CustomText('Description', FontWeight.normal,
                        constantWidget.greyColor, 15),
                    Expanded(
                      child: constantWidget
                          .customTextField(eachItemController.productTitle,),
                    ),


                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.mode_edit,
                color: constantWidget.whiteColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          height: orientation==Orientation.landscape?Get.height*1.8:Get.height*0.86,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              SizedBox(
                height: orientation == Orientation.landscape
                    ? Get.height * 0.32
                    : Get.height * 0.15,
                child: Container(
                  color: Colors.redAccent,
                ),
              ),
              Positioned(
                  left: 19,
                  top: 140,
                  child: constantWidget.CustomText('Make Visible/Not?',
                      FontWeight.normal, constantWidget.greyColor, 15)),
              Positioned(
                left: 19,
                top: 145,
                child: Switch(
                  value: true,
                  onChanged: (onChanged) {},
                  inactiveThumbColor: constantWidget.greyColor.withOpacity(0.4),
                  activeColor: constantWidget.redColor,
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 200,
                  child: Divider(
                    color: constantWidget.blackColor.withOpacity(0.2),
                    thickness: 1,
                  )),
              Positioned(
                  top: 220,
                  left: 19,
                  child: constantWidget.CustomText(
                      'Specifications',
                      FontWeight.normal,
                      constantWidget.blackColor.withOpacity(0.7),
                      15)),
              Positioned(
                top: 240,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        constantWidget.CustomText(
                            'Add new specification',
                            FontWeight.normal,
                            constantWidget.blackColor.withOpacity(0.8),
                            18)
                      ],
                    ),
                    onTap: () {
                      specificationDialogue(context);
                    },
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 270,
                  child: Divider(
                    color: constantWidget.blackColor.withOpacity(0.2),
                    thickness: 1,
                  )),


             Positioned(
                 top:325,
                 left: 10,
                 child: Icon(Icons.euro_symbol_sharp)),
              Positioned(
                  top:315,
                  left: 40,

                  child: Container(

                      width: Get.width*0.8,
                      child:constantWidget.priceTextField(eachItemController.price, 'Price'))),


              Positioned(
                  top:390,
                  left: 10,
                  child: Icon(Icons.euro_symbol_sharp)),
              Positioned(
                  top:376,
                  left: 40,

                  child: Container(

                      width: Get.width*0.8,
                      child:constantWidget.priceTextField(eachItemController.priceWithoutOffer, 'Price Without Offer'))),

              Positioned(
                  top:450,
                  left: 15,
                  child: Text('%',style: TextStyle(fontSize: 20),)),

              Positioned(
                  top:435,
                  left: 40,

                  child: Container(

                      width: Get.width*0.8,
                      child:constantWidget.priceTextField(eachItemController.tax, 'Tax'))),

              Positioned(
                  top:490,
                  left: 40,

                  child: Container(

                      width: Get.width*0.8,
                      child:constantWidget.priceTextField(eachItemController.sequenceNumber, 'Squence Number'))),
              Positioned(
                top: 600,
                  left: 19,
                  child: constantWidget.CustomText('In Stock/Not?', FontWeight.normal, constantWidget.blackColor, 15)),


              Positioned(
                left: 14,
                top: 610,
                child:

                Switch(
                  value: false,
                  onChanged: (onChanged) {},
                  inactiveThumbColor: constantWidget.greyColor.withOpacity(0.6),
                  activeColor: constantWidget.redColor,
                ),
              ),








            ],
          ),
        ),
      )),
    );
  }

  specificationDialogue(BuildContext context){
    return Get.dialog(Padding(
      padding: const EdgeInsets.only(top:15.0,right: 15,left: 15),
      child: Center(
        child: Container(
          width: Get.width,
          height: Get.height*0.13,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0,top:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please add specification first in selected product',style: TextStyle(
                      decoration: TextDecoration.none,fontSize: 15,color: Colors.black.withOpacity(0.7)

                    ),),



                  ],
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                TextButton(onPressed: (){
                  Get.back();
                }, child: Text('Ok',style: TextStyle(color: Colors.black),))
              ],)
            ],
          ),
        ),
      ),
    ));





  }


}
