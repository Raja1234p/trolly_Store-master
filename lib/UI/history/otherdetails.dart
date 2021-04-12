import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0,right:20 ,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Created',style: TextStyle(color: Colors.black),),
                  Text('Delivered',style: TextStyle(color: Colors.black),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right:20,top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Text('12th Apr 2021'),
                  Text('12th Apr 2021'),
                ],),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                height: 27,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Center(child: Text('Order Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(
                height: 20,
              ),

              ListTile(
                dense: true,
                leading:CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage:AssetImage('assets/images/placeholder.png',) ,
                ),

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Muhammad Faiq'),
                    Icon(Icons.star,size: 30,color: Colors.black54,)
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Give Rate'),
                  ],
                )
              ),
              Container(
                width: 160,
                height: 27,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Center(child: Text('Delivery Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),

              ListTile(
                  dense: true,
                  leading:CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage:AssetImage('assets/images/placeholder.png',) ,
                  ),

                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Muhammad Faiq'),
                      Icon(Icons.star,size: 30,color: Colors.black54,)
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/locationIconB.png',height: 40,),
                      Text('Give Rate'),
                    ],
                  )
              ),

              Padding(
                padding: const EdgeInsets.only(left:60.0,right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Time (h:m)'),
                  Text('Distance'),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(left:80.0,right: 60,top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('0 : 2'),
                  Text('8.76 km'),
                ],),
              ),






            ],
          ),
        ),
      ),

    );
  }
}
