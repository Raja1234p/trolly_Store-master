import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/history/otherdetailstabcontroller.dart';
import 'package:trolly_store/UI/history/invoice.dart';
import 'package:trolly_store/UI/history/cart.dart';
import 'package:trolly_store/UI/history/otherdetails.dart';

class OtherDetailsTabBar extends StatelessWidget {
  final otherDetailsController = Get.put(OtherDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Order No 301',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.red,
            controller: otherDetailsController.tabController,
            tabs: [
              Tab(
                child: Text(
                  'Other Details',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text('Invoice', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('Cart', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: otherDetailsController.tabController,
          children: [
            OtherDetails(),
            Invoice(),
            Cart(),
          ],
        ));
  }
}
