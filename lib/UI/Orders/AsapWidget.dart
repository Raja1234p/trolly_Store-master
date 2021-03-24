import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/Controller/asapController.dart';
import 'package:trolly_store/UI/Orders/orderdetails.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';
class AsapWidegts extends StatelessWidget {

  ConstantWidget constantWidget = ConstantWidget();
  var asapController = Get.put(AsapController());

  @override
  Widget build(BuildContext context) {
Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body:
      SafeArea(
        child:


        Obx(()=>
           ListView.separated(
            itemCount: asapController.getorder.length,

              separatorBuilder: (context, index) {
                return Divider(height: 2,);
              },

            itemBuilder: (context,int index){
              return GestureDetector(
                child: Container(
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
                          children:[ Obx(()=>Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ConstantWidget().CustomText(asapController.getorder[index].userDetail.name, FontWeight.bold, constantWidget.blackColor,15 ),
                              ConstantWidget().CustomText(asapController.getorder[index].total.toString(), FontWeight.bold, constantWidget.blackColor,15 ),
                            ],
                          )),
                            SizedBox(height: Get.height*0.01,),
                        ]),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(()=> constantWidget.CustomText(asapController.getorder[index].uniqueId.toString(), FontWeight.normal, constantWidget.greyColor, 13)),
                            Spacer(),
                            GestureDetector(child: Icon(Icons.phone),
                              onTap: ()async{
                             await launchCaller(asapController.getorder[index].userDetail.phone);
                              },


                            ),
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
                ),
                onTap: (){
                  Get.to(()=>OrderDetails(name:asapController.getorder[index].userDetail.name ,total: asapController.getorder[index].total.toString(),ordernumber:asapController.getorder[index].uniqueId.toString(), location: 'not finding',

                  phonenumber:(){
                    launchCaller(asapController.getorder[index].userDetail.phone);
                  } ,
                  ));
                },
              );

            }

              ),
        ),
      ),
    );
  }
  Future<void> launchCaller(number) async {
    String url = "tel://" + number;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }


  }

}

