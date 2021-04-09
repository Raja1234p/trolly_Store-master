import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/UI/bank_details/add_bank_details.dart';
import 'package:get/get.dart';

class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Details',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(()=>AddBankDetails());
      },
        backgroundColor: Colors.red,
        child: Icon(Icons.add,color: Colors.white,),

      ),
    );
  }
}
