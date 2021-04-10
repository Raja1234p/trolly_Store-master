import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/Controller/asapController.dart';
import 'package:trolly_store/Network/ordernetwork.dart';
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

    Future<void> toshowdata()async{
      print('working');

     await asapController.Getorderlist();

     for(int i=0;i<asapController.getorder.length;i++){
      print(asapController.getorder[i].userDetail.name);
     }


    }
    return Scaffold(
      body: SafeArea(
        child:GetX<AsapController>(
          builder: (update){
            return RefreshIndicator(
              color: Colors.black,

              child:
              update.getorder.length==0
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  itemCount: update.getorder.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 2,
                    );
                  },
                  itemBuilder: (context, int index) {
                    if (update.getorder.hashCode == 200) {
                      return CircularProgressIndicator();
                    }

                    return GestureDetector(
                      child: Container(
                        color: Colors.white,
                        width: Get.width,
                        height: orientation == Orientation.portrait
                            ? Get.height * 0.12
                            : Get.height * 0.24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              dense: true,
                              leading: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              title: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    ConstantWidget().CustomText(
                                        update.getorder[index]
                                            .userDetail.name,
                                        FontWeight.bold,
                                        constantWidget.blackColor,
                                        15),
                                    ConstantWidget().CustomText(
                                        ' £ ${update.getorder[index].total.toString()}',
                                        FontWeight.bold,
                                        constantWidget.blackColor,
                                        15),
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                              ]),
                              subtitle: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                   constantWidget.CustomText(
                                      'Order No.#${update.getorder[index].uniqueId.toString()}',
                                      FontWeight.normal,
                                      constantWidget.greyColor,
                                      13),
                                  Spacer(),
                                  GestureDetector(
                                    child: Icon(Icons.phone),
                                    onTap: () async {
                                      await launchCaller(update
                                          .getorder[index].userDetail.phone);
                                    },
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.017,
                                  ),
                                  Icon(Icons.stay_current_landscape)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    constantWidget.CustomText(
                                        update.getorder[index]
                                            .orderStatus ==
                                            1
                                            ? 'Waiting'
                                            : update.getorder[index]
                                            .orderStatus ==
                                            3
                                            ? 'Accepted'
                                            : update.getorder[index]
                                            .orderStatus ==
                                            7
                                            ? 'Rejected'
                                            : '',
                                        FontWeight.normal,
                                        constantWidget.redColor,
                                        13),
                                    Icon(
                                      Icons.bike_scooter,
                                      color: constantWidget.redColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.to(() => OrderDetails(
                          name: update
                              .getorder[index].userDetail.name,
                          total:
                          ' £ ${update.getorder[index].total.toString()}',
                          ordernumber: update
                              .getorder[index].uniqueId
                              .toString(),
                          location: "${update.add1.value}",
                          phonenumber: () {
                            launchCaller(update
                                .getorder[index].userDetail.phone);
                          },
                        ));
                      },
                    );
                  }),
              onRefresh: toshowdata,
            );
          },

        ),


    ));
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
