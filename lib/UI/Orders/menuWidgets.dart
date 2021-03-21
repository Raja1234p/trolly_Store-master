import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:trolly_store/Controller/menucontroller.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';

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
      backgroundColor: constantWidget.whiteColor,
      appBar: AppBar(
        title: Text(
          'Items',
          style: TextStyle(color: constantWidget.blackColor),
        ),
        centerTitle: true,
        backgroundColor: constantWidget.whiteColor,
      ),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        separator: Divider(
          color: constantWidget.blackColor,
        ),
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
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
        Obx(()=>   Container(

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
                    child: constantWidget.CustomText(element['weight'],
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
                        onPressed: () {},
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

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //
              //
              //
              //       ],
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              //       children: [
              //
              //
              //
              //         Obx(()=>   Switch(
              //             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //             inactiveThumbColor: constantWidget.greyColor.withOpacity(0.4),
              //             activeColor: constantWidget.redColor,
              //
              //             value: menuController.switchValue.value, onChanged: (value){
              //           menuController.selectSwitchValue(value);
              //
              //         }))],
              //     ),
              //
              //
              //
              //   ],
              // ),
              ));
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
