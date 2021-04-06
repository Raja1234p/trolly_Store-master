import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReviewPage extends StatelessWidget {
  // final controller = Get.put(StoreDetailController());

// final internetController = Get.find<ConnectivityController>();
  final format = DateFormat('dd MMMM yyyy');

  var formatNumber = NumberFormat("###.0#", "en_US");

  @override
  Widget build(BuildContext context) {
    int ratingNum; // this important... this reverses the list of numbers in list..
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: orientation == Orientation.portrait
                      ? Get.height * 0.171
                      : Get.height * 0.36,
                  width: orientation == Orientation.portrait
                      ? Get.width * 0.27
                      : Get.width * 0.2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: orientation == Orientation.portrait
                              ? Get.height * 0.12
                              : Get.height * 0.26,
                          width: orientation == Orientation.portrait
                              ? Get.width * 0.23
                              : Get.width * 0.17,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '5',
                              // "${formatNumber.format(controller.finalRatings.value.storeAvgReview)}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: orientation == Orientation.portrait
                            ? Get.height * 0.03
                            : Get.height * 0.01,
                        child: ListView.builder(
                          physics: orientation == Orientation.portrait
                              ? NeverScrollableScrollPhysics()
                              : ScrollPhysics(),
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: orientation == Orientation.portrait
                                      ? Get.height * 0.023
                                      : Get.height * 0.075,
                                  color: Colors.grey,
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 2,
                  color: Colors.black45,
                ),
                Container(
                  height: orientation == Orientation.portrait
                      ? Get.height * 0.171
                      : Get.height * 0.36,
                  width: orientation == Orientation.portrait
                      ? Get.width * 0.7242
                      : Get.width * 0.797,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: Get.height,
                        width: Get.width,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 8, right: 4),
                              child: Container(
                                height: orientation == Orientation.portrait
                                    ? Get.height * 0.2
                                    : Get.height * 0.4,
                                child: ListView.builder(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 5,
                                  //reverse: true,
                                  itemBuilder: (context, index) {
                                    ratingNum = 5 - index;
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Container(
                                        // Container
                                        height:
                                            orientation == Orientation.portrait
                                                ? Get.height * 0.027
                                                : Get.height * 0.06,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: orientation ==
                                                      Orientation.portrait
                                                  ? Get.height * 0.03
                                                  : Get.height * 0.2,
                                              width: orientation ==
                                                      Orientation.portrait
                                                  ? Get.width * 0.1
                                                  : Get.width * 0.05,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "$ratingNum",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Colors.grey[800],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Expanded(
                                            //   child:
                                            //       controller.listOfRatings
                                            //                   .value ==
                                            //               null
                                            //           ? 0
                                            //           : Row(
                                            //               mainAxisAlignment:
                                            //                   MainAxisAlignment
                                            //                       .spaceBetween,
                                            //               children: [
                                            //                 Expanded(
                                            //                   child: Container(
                                            //                       padding: const EdgeInsets
                                            //                               .symmetric(
                                            //                           horizontal:
                                            //                               10),
                                            //                       width: orientation ==
                                            //                               Orientation
                                            //                                   .portrait
                                            //                           ? Get.width *
                                            //                               0.4
                                            //                           : Get.width *
                                            //                               0.68,
                                            //                       height: 2,
                                            //                       child: Obx(() =>
                                            //                           LinearProgressIndicator(
                                            //                             valueColor:
                                            //                                 new AlwaysStoppedAnimation<Color>(Colors.red),
                                            //                             value:
                                            //                                 controller.progressList.value[index] ??
                                            //                                     0,
                                            //                             backgroundColor:
                                            //                                 Colors.white70,
                                            //                           ))),
                                            //                 ),
                                            //                 Padding(
                                            //                   padding:
                                            //                       const EdgeInsets
                                            //                               .only(
                                            //                           right: 5),
                                            //                   child: Obx(
                                            //                       () => Text(
                                            //                             "${controller.listOfRatings.value[index] ?? 0}",
                                            //                             style: TextStyle(
                                            //                                 color:
                                            //                                     Colors.black,
                                            //                                 fontSize: 12),
                                            //                           )),
                                            //                 ),
                                            //               ],
                                            //             ),
                                            // )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   height: orientation == Orientation.portrait
            //       ? Get.height * 0.6
            //       : Get.height,
            //   child: ratingList(orientation),
            // ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  // Widget ratingList(orientation) {
  //   return controller.listOfStores.value.length == null
  //       ? 0
  //       : Container(
  //           height: orientation == Orientation.portrait
  //               ? Get.height * 0.2
  //               : Get.height * 0.4,
  //           width: double.infinity,
  //           child: ListView.builder(
  //             physics: ScrollPhysics(),
  //             itemCount: controller.listOfStores.value.length,
  //             itemBuilder: (context, index) {
  //               return InkWell(
  //                 onTap: () {
  //                   // Get.to();
  //                   // Get.to(() => SteperScreen());
  //                   // internetController.connectivityDetail();
  //                 },
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 10),
  //                   child: Container(
  //                     height: orientation == Orientation.portrait
  //                         ? Get.height * 0.12
  //                         : Get.height * 0.25,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         ClipRRect(
  //                           borderRadius: BorderRadius.circular(50),
  //                           child: Obx(() => FadeInImage.assetNetwork(
  //                               placeholder: 'assets/images/placeholder.png',
  //                               image:
  //                                   'https://app.trolleymate.co.uk/${controller.listOfStores.value[index].userDetail.imageUrl}',
  //                               height: 70,
  //                               width: 70,
  //                               fit: BoxFit.fill)),
  //                         ),
  //                         Padding(
  //                           padding: orientation == Orientation.portrait
  //                               ? const EdgeInsets.only(right: 50)
  //                               : const EdgeInsets.only(right: 400),
  //                           child: Column(
  //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Obx(() => Text(
  //                                     "${controller.listOfStores.value[index].userDetail.firstName + " " + controller.listOfStores.value[index].userDetail.lastName}",
  //                                     style: TextStyle(
  //                                         color: Colors.black,
  //                                         fontWeight: FontWeight.bold),
  //                                   )),
  //                               Obx(() => Row(
  //                                     children: [
  //                                       Icon(Icons.star),
  //                                       Text(
  //                                           "${controller.listOfStores.value[index].userRatingToStore}"),
  //                                     ],
  //                                   )),
  //                               Obx(() => Text(
  //                                     "${controller.listOfStores.value[index].orderUniqueId}",
  //                                     style: TextStyle(color: Colors.red),
  //                                   )),
  //                             ],
  //                           ),
  //                         ),
  //                         Align(
  //                             alignment: Alignment.topRight,
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(top: 12.0),
  //                               child: Obx(() => Text(
  //                                   "${format.format(controller.listOfStores[index].createdAt)}")),
  //                             )),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           ));
  // }
}
