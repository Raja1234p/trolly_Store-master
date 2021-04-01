import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/UI/CategoryFolder/addcategory.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';


class CategoryWidget extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text('Categories',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,

        actions: [IconButton(icon: Icon(Icons.delete,color: Colors.black,), onPressed: (){})],
      ),
body: ListView.separated(
  separatorBuilder: (context,int index)=>Divider(),
    itemCount: 10,
    itemBuilder: (context,int index){

  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         constantWidget.CustomText('Baby Care & Food (1)', FontWeight.normal, Colors.black, 17),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.black45,)

          ],
      ),
    ),
    onTap: (){
      Get.to(AddCategory());
    },
  );






}),
    );
  }
}
