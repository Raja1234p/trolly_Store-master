import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../constWidgets.dart';

class OrderDetails extends StatelessWidget {
  final Function phonenumber;
  final String name;
  final String total;
  final String ordernumber;
  final String location;
  ConstantWidget constantWidget = ConstantWidget();

   OrderDetails({Key key, this.name, this.total, this.ordernumber, this.location, this.phonenumber,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.red,
        height:orientation==Orientation.landscape?Get.height*0.12: Get.height*0.06,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){}, child: Text('ACCEPT',style: TextStyle(color: Colors.white),)),
              Container(
                color: Colors.white,
                width: Get.width*0.004,
                height:orientation==Orientation.landscape?Get.height*0.68: Get.height*0.034,
              ),
              TextButton(onPressed: (){}, child: Text('REJECT',style: TextStyle(color: Colors.white),))

            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text('Order',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.mediation,color: Colors.black), onPressed: (){}),
          IconButton(icon: Icon(Icons.print,color: Colors.black), onPressed: (){}),
        ],
      ),
      body: Container(
        child: Column(
          children: [Container(
            color: Colors.yellow,
            width: Get.width,
            height: Get.height*0.2,
            child: Stack(
              children: [

                Positioned(
                    left:15,
                    top: 25,
                    child: CircleAvatar()),
             Positioned(
                 right: 10,
                 top: 20,
                 child: Text(total)),

                 Positioned(

                     top: 45,
                     left: 60,
                     child:    Text('Order No.# ${ordernumber}')),
                  Positioned(
                      right: 10,
                      top: 40,
                      child:   Icon(Icons.money)),


                Positioned(
                    top: 80,
                    left: 10,
                    child: Text('London,Uk',style: TextStyle(color: Colors.grey),)),
                Positioned(
                    top: 70,
                    right: 10,
                    child: GestureDetector(child: Icon(Icons.phone),
                    onTap: phonenumber,
                    )),
                Positioned(
                    top: 100,

                    right: 10,
                    child:Icon(Icons.delivery_dining,color: Colors.red,size: 30,)),

                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Divider(thickness: 1,))

                  ],),


          ),

            Expanded(
              child: Container(
                height: Get.height,
                child: GroupedListView<dynamic, String>(
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
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height*0.01,),
                        ListTile(
                          title: Row(

                            children: [
                              Expanded(child: Text('Boston & Hedges Superking Blue 20Pk',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          trailing:Padding(
                            padding: const EdgeInsets.only(bottom:16.0),
                            child: Text('E.120',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: Get.height*0.01,),
                        Padding(
                          padding: const EdgeInsets.only(left:13.0),
                          child: Text('Qty 1x E 10.39'),
                        )
                      ],
                    );



                  },
                ),
              ),
            ),


          ],
        ),
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
    'group': 'Baguettes and Buns'
  },
];
