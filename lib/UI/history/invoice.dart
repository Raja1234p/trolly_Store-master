import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Icon(Icons.watch_later_outlined,color: Colors.black,),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Time (h:m)'),
                                    Text('0:0'),
                                  ],
                                ),

                              ],
                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Icon(Icons.store_mall_directory_outlined,color: Colors.black,),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Distance'),
                                    Text('0:0 mile'),
                                  ],
                                ),

                              ],
                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Icon(Icons.money_rounded,color: Colors.black,),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Time (h:m)'),
                                    Text('0:0'),
                                  ],
                                ),

                              ],
                            ),


                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Service Price'),
                  Text('E 4.99'),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10),              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text('Total service type'.toUpperCase(),style: TextStyle(color: Colors.red),),
                  Text('E 4.99',style: TextStyle(color: Colors.red),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10),              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item Price  3'),
                  Text('E 4.99'),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10,bottom: 5),              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('total item price'.toUpperCase(),style: TextStyle(color: Colors.red),),
                  Text('E 4.99',style: TextStyle(color: Colors.red),),
                ],),
              ),

              Container(
                width:160,
                height: 27,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Center(child: Text('Other Earning',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Paid Service Payment'),
                    Text('E 0.00'),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Receive Order Payment',style: TextStyle(color: Colors.red),),
                    Text('E 0.00',style: TextStyle(color: Colors.red),),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 10,bottom: 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Profit'),
                    Text('E 3.57'),
                  ],),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(thickness: 1,),
          Card(
            margin: EdgeInsets.zero,
            // color: Colors.red,

            child: Container(
              width: double.infinity,

              height: 135,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             mainAxisSize: MainAxisSize.min,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [

                               Icon(Icons.account_balance_wallet,color: Colors.black,size: 30,),
                               SizedBox(width: 5,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('Wallet'),
                                   Text('E 0:0'),
                                 ],
                               ),

                             ],
                           ),


                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             mainAxisSize: MainAxisSize.min,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [

                               Icon(Icons.account_balance_wallet,color: Colors.black,),
                               SizedBox(width: 5,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('Cash'),
                                   Text('E 0:0'),
                                 ],
                               ),

                             ],
                           ),


                         ],
                       ),


                     ],

                    ),
                    SizedBox(height: 10,),
                    Text('Total'),
                    SizedBox(height: 20,),
                    Text('E 8.56',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
