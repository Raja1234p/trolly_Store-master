import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../constWidgets.dart';

class Cart extends StatelessWidget {
  ConstantWidget constantWidget=ConstantWidget();

  List _elements = [
    {'name': 'John', 'group': 'Team A'},
    {'name': 'Will', 'group': 'Team B'},
    {'name': 'Beth', 'group': 'Team A'},
    {'name': 'Miranda', 'group': 'Team B'},
    {'name': 'Mike', 'group': 'Team C'},
    {'name': 'Danny', 'group': 'Team C'},
    {'name': 'John', 'group': 'Team A'},
    {'name': 'Will', 'group': 'Team B'},
    {'name': 'Beth', 'group': 'Team A'},
    {'name': 'Miranda', 'group': 'Team B'},
    {'name': 'Mike', 'group': 'Team C'},
    {'name': 'Danny', 'group': 'Team C'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GroupedListView<dynamic, String>(
        physics: ScrollPhysics(),
        sort: true,
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        separator: Divider(
          color: constantWidget.blackColor,
        ),
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                color: Colors.red,
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        indexedItemBuilder: (c, element,index) {
          return Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,

                child: Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Positioned(
                       left: 10,
                        top: 10,
                        child: constantWidget.CustomText('Muhammad Sahib', FontWeight.bold, Colors.black, 18)),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: constantWidget.CustomText('E 12.4', FontWeight.bold, Colors.black, 18)),
                    Positioned(
                        left: 12,
                        top:40,
                        child: constantWidget.CustomText('Order No. #190', FontWeight.bold, Colors.black45, 13)),

                  ],
                )
            ),
          );

        },
      ),

    );
  }
}
