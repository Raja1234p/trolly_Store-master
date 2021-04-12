import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:trolly_store/Controller/asapController.dart';
import 'package:trolly_store/Controller/menucontroller.dart';
import 'package:trolly_store/Model/productlist.dart';
import 'package:trolly_store/UI/history/otherdetailstabbar.dart';
import 'package:trolly_store/constWidgets.dart';
import 'package:get/get.dart';
import 'history_contoller.dart';

class History extends StatelessWidget {
  var historyController=Get.put(HistoryController());
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('History',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.filter_list,color: Colors.black,), onPressed:(){
            historyController.toggleFilterPopUp();
          }),
        ],
      ),

      body:Stack(
        children: [


          GroupedListView<dynamic, String>(
            physics: ScrollPhysics(),
            // floatingHeader: true,
            stickyHeaderBackgroundColor: Colors.white,
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
                child: GestureDetector(
                  child: Container(
                    color: Colors.white,
                      height: 110,
                      width: MediaQuery.of(context).size.width,

                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                              top: 35,
                              left: -17,
                              child: Image.asset('assets/images/placeholder.png',width: 120,)),
                          Positioned(
                              left: 100,
                              top: 20,
                              child: constantWidget.CustomText('Muhammad Sahib', FontWeight.bold, Colors.black, 18)),
                          Positioned(
                              right: 20,
                              top: 20,
                              child: constantWidget.CustomText('E 12.4', FontWeight.bold, Colors.black, 18)),
                          Positioned(
                              left: 98,
                              top: 50,
                              child: constantWidget.CustomText('Order No. #190', FontWeight.bold, Colors.black45, 18)),
                          Positioned(
                              left: 98,
                              top: 94,
                              child: constantWidget.CustomText('8:56 PM', FontWeight.bold, Colors.black45, 18)),

                        ],
                      )
                  ),
                  onTap: (){
                    Get.to(()=>OtherDetailsTabBar());
                  },

                ),
              );

            },
          ),
          Obx(()=>   Visibility(

              visible: historyController.showFilterPopUp.value,
              child: Positioned(
                    left: 0,
                right: 0,
                top: -7,
                child: FilterWidget(context),
              ))),
        ],
      ),

      // body: FilterWidget(context),


    );
  }


  FilterWidget(BuildContext context){
    return Container(

      height: 116,

      child: Card(
        elevation: 7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Icon(Icons.date_range,size: 30,),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      width: 200,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.black12,

                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:TextFormField(
                          onTap: (){
                            datePicker(context);
                          },
                          controller: historyController.startDate,
                      readOnly: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 13,horizontal: 10),

                        border: InputBorder.none

                      ),
                    )),
                  ),
                  SizedBox(width: 10,),

                  Icon(Icons.date_range,size: 30,),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                        width: 200,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.black12,

                            borderRadius: BorderRadius.circular(100)
                        ),
                        child:  TextFormField(
                          onTap: (){
                            endDatePicker(context);
                          },
                          controller: historyController.endDate,
                              readOnly: true,
                          decoration: InputDecoration(


                              contentPadding: EdgeInsets.symmetric(vertical: 13,horizontal: 10),
                              border: InputBorder.none

                          ),
                        )),
                  )
                ],
              ),
            ),

           Padding(
             padding: const EdgeInsets.only(top:15.0,right: 10),
             child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    TextButton(onPressed: (){
                      historyController.startDate.clear();
                      historyController.endDate.clear();
                    }, child: constantWidget.CustomText('Reset', FontWeight.normal, constantWidget.greyColor, 18)),
                    TextButton(onPressed: (){}, child: constantWidget.CustomText('Apply', FontWeight.normal, constantWidget.greyColor, 18)),
                  ],
                ),
           ),

          ],
        ),
      ),
    );

  }
  DateTime selectedDate = DateTime.now();
  DateTime endDate = DateTime.now();


  datePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (context, child) {
          return  Theme(
            data: ThemeData.light().copyWith(
              primaryColor: const Color(0xFF000000),
              accentColor: const Color(0xFF000000),
              colorScheme: ColorScheme.light(primary: const Color(0xFF000000)),
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary
              ),
            ),
            child: child,
          );
        },
        firstDate: DateTime(2000), context: context, lastDate: DateTime(2050), initialDate: selectedDate);

    if(picked!=null){
      selectedDate=picked;
      historyController.startDate.text=DateFormat('yyyy-MM-dd').format(selectedDate);
    }
  }
  endDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (context, child) {
          return  Theme(
            data: ThemeData.light().copyWith(
              primaryColor: const Color(0xFF000000),
              accentColor: const Color(0xFF000000),
              colorScheme: ColorScheme.light(primary: const Color(0xFF000000)),
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary
              ),
            ),
            child: child,
          );
        },
        firstDate: DateTime(2000), context: context, lastDate: DateTime(2050), initialDate: selectedDate);

    if(picked!=null){
      endDate=picked;
      historyController.endDate.text=DateFormat('yyyy-MM-dd').format(endDate);
    }
  }

}
