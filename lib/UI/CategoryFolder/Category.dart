import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/UI/CategoryFolder/addcategory.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';

import 'addCategoryController.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();
  final categoryController = Get.put(AddCategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.black,
              ),
              onPressed: () {
                categoryController.toggleMethod();
              })
        ],
      ),
      body: Obx(() => ListView.separated(
          separatorBuilder: (context, int index) => Divider(),
          itemCount: categoryController.productArray.value.length,
          itemBuilder: (context, int index) {
            return GestureDetector(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    constantWidget.CustomText('${categoryController.productArray[index].name[0]} (1)',
                        FontWeight.normal, Colors.black, 17),
                 Obx(()=>   categoryController.deleteProduct.value?IconButton(icon: Icon(Icons.close), onPressed: (){
                   categoryController.productArray.removeAt(index);
                 }):Icon(
                   Icons.arrow_forward_ios_rounded,
                   color: Colors.black45,
                 ))
                  ],
                ),
              ),
              onTap: () {
                Get.to(AddCategory(catId: categoryController.productArray[index].name[0], index: index,));
                print(categoryController.productArray[index].name);
              },
            );
          })),
    );
  }
}
