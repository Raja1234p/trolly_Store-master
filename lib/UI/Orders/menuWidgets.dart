import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:trolly_store/Controller/menucontroller.dart';
import 'package:trolly_store/Model/productlist.dart';
import 'package:trolly_store/UI/Orders/eachItem.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';

import '../specificationdetails.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();
  final menuController = Get.put(MenuController());

  List<Widget> list = [
    Text('sss'),
  ];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white),
        onPressed: (){},
        backgroundColor: Colors.red,
      ),
      backgroundColor: constantWidget.whiteColor,
      appBar: AppBar(
        actions: [     IconButton(icon: Icon(Icons.filter_list,color: Colors.black,), onPressed: (){
          Get.dialog(Container(
            height: orientation==Orientation.landscape?Get.height*5:0,
            margin: orientation == Orientation.portrait
                ? const EdgeInsets.only(
                top: 40, bottom: 291, left: 150, right: 10)
                : const EdgeInsets.symmetric(
                horizontal: 180, vertical: 100),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              // mainAxisAlignment:
              // MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7,),
                Container(height: Get.height * 0.04,
                  color: Colors.red,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Material(
                    child: TextField(
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 15,),
                          contentPadding: const EdgeInsets.only(top: 20, right: 20),
                          hintText: "Enter Item Name",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 13),
                          // filled: true,
                          // fillColor: Colors.black12,
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: Colors.black, width: 1)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: Get.height * 0.4,
                  width: 300,
                  child: ListView.separated(
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Testing", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, decoration: TextDecoration.none, fontSize: 12),),
                                Material(
                                  borderOnForeground: false,
                                  child: Checkbox(
                                      activeColor: Colors.black54,
                                      value: true, onChanged: (value){
                                  }),
                                ),
                              ],
                            ),
                          ),
                        );
                      }, separatorBuilder: (context, index){
                    return Divider(thickness: 1, color: Colors.black45,);
                  }, itemCount: 30),
                ),
                SizedBox(height: Get.height*0.03,),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    color: Colors.redAccent,
                    height: Get.height * 0.06,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text("Apply", style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.normal, fontSize: 12),),
                    ),
                  ),
                )
              ],
            ),
          ));

        })],
        title: Text(
          'Items',
          style: TextStyle(color: constantWidget.blackColor),
        ),
        centerTitle: true,
        backgroundColor: constantWidget.whiteColor,
      ),
      body:

      GroupedListView<ItemArray, String>(
        elements: menuController.itemArray,
        groupBy: (element) => element.productId,
        separator: Divider(
          color: constantWidget.blackColor,
        ),
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1.productId.compareTo(item2.productId),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                color: Colors.red,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 15,
                    color: constantWidget.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        itemBuilder: (c, element) {
          return
                GestureDetector(child: Obx(()=>   Container(
          color: Colors.white,

              height: orientation == Orientation.landscape
                  ? Get.height * 0.26
                  :menuController.switchValue.value? Get.height * 0.11:Get.height*0.12,
              child: Stack(
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top:menuController.switchValue.value?  8:18,
                    left: 8,
                    child: constantWidget.CustomText('Nestle', FontWeight.bold,
                        constantWidget.blackColor, 15),
                  ),
                  Positioned(
                    right: 15,
                    top:menuController.switchValue.value?  8:9,
                    child: constantWidget.CustomText('E 7.99', FontWeight.bold,
                        constantWidget.blackColor, 15),
                  ),
                  Positioned(
                    top:menuController.switchValue.value?  32:39,
                    left: 8,
                    child: constantWidget.CustomText(element.productId,
                        FontWeight.bold, constantWidget.greyColor, 12),
                  ),
                  Obx(() => Positioned(
                        right: 10,
                        top: menuController.switchValue.value? 22:24,
                        child: Switch(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            inactiveThumbColor:
                                constantWidget.greyColor.withOpacity(0.4),
                            activeColor: constantWidget.redColor,
                            value: menuController.switchValue.value,
                            onChanged: (value) {
                              menuController.selectSwitchValue(value);
                            }),
                      )),
                  Positioned(

                    top:menuController.switchValue.value? 35:40,
                    child: TextButton(
                        onPressed: () {
                        Get.to(()=>ProductDetailsScreen());
                        },
                        child: Text(
                          'Specifications',
                          style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                            decorationColor:Colors.red,

                          ),
                        )),
                  ),
            Obx(()=>     menuController.switchValue.value?
            Positioned(

                      right: 17,
                      bottom: 12,
                      child: constantWidget.stockAndOutOfStock('In Stock', FontWeight.normal, constantWidget.greyColor, 15)):
                 Positioned(

                     right: 15,
                     bottom: 0,
                     child: Column(
                       children: [
                         constantWidget.stockAndOutOfStock('Out of ', FontWeight.normal, constantWidget.greyColor, 15),
                         constantWidget.stockAndOutOfStock('Stock ', FontWeight.normal, constantWidget.greyColor, 15),

                       ],
                     )))
                ],
              )


              )),

                onTap: (){
                  print('it is working');
                  Get.to(()=>EachItems());
                },

                );
        },
      ),
    );
  }
}

List _elements = [
  {
    'name': 'Nestle Cerelac Baby Cereal',
    'weight': '500 Grams',
    'specification': 'specification',
    'group': 'Baby & Toddler Food'
  },
  {
    'name': 'Nestle Cerelac Baby Cereal',
    'weight': '500 Grams',
    'specification': 'specification',
    'group': 'Baby & Toddler Food'
  },
  {
    'name': 'Nestle Cerelac Baby Cereal',
    'weight': '500 Grams',
    'specification': 'specification',
    'group': 'Baby & Toddler Food'
  },
  {
    'name': 'Nestle Cerelac Baby Cereal',
    'weight': '500 Grams',
    'specification': 'specification',
    'group': 'Baby & Toddler Food'
  },
  {
    'name': 'Nestle Cerelac Baby Cereal',
    'weight': '500 Grams',
    'specification': 'specification',
    'group': 'Baguettes and Buns'
  },
];
