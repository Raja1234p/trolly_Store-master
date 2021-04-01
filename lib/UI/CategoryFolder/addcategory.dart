import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../constWidgets.dart';
import 'addCategoryController.dart';

class AddCategory extends StatelessWidget {
var addCateoryController = Get.put(AddCategoryController());
  ConstantWidget constantWidget = ConstantWidget();
  @override
  Widget build(BuildContext context) {
    Orientation orientation =MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: constantWidget.whiteColor,
      appBar: AppBar(centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
      backgroundColor: constantWidget.whiteColor,
      title: Text('Add Category',style: TextStyle(color: Colors.black),),

      ),
      body: Container(
        height: Get.height,
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Container(height: orientation==Orientation.landscape?Get.height*0.36:Get.height*0.2,


                child: Row(
                  children: [
                    Padding(
                      padding: orientation==Orientation.landscape?const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5): const EdgeInsets.only(left: 15,right: 15,bottom: 0),
                      child: Container(width: orientation==Orientation.landscape?Get.width*0.2:Get.width*0.28,
                      height: orientation==Orientation.landscape?Get.height*0.4:Get.height*0.13,
                        decoration: BoxDecoration(
                          color: Colors.green,
                              borderRadius: BorderRadius.circular(2)
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(

                        children: [


                          SizedBox(height: Get.height*0.03,),
                          constantWidget.addCategoryTextField(addCateoryController.categoryTitle, 'Category Title', true, true, () {
                            constantWidget.customTextFieldDialog(addCateoryController.dialogueTextField, (){
                              print("working");
                              addCateoryController.categoryTitle.text=addCateoryController.dialogueTextField.text;

                            });
                          }, TextInputType.name),
                          SizedBox(height: Get.height*0.01,),
                          constantWidget.addCategoryTextField(addCateoryController.sequenceNumber, 'Sequence Number', true, false, () => null, TextInputType.number),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: constantWidget.CustomText('SubCategories', FontWeight.bold, Colors.black, 18),
            ),
            Expanded(
              child: ListView.separated(

                shrinkWrap: true,
                  itemBuilder: (context,int index){

                return Obx(()=>CheckboxListTile(
                  activeColor: constantWidget.blackColor,
                  checkColor: constantWidget.whiteColor,
                    dense: true,
                    title: constantWidget.CustomText(index.toString(), FontWeight.normal, constantWidget.blackColor.withOpacity(0.7), 15),
                    value: addCateoryController.checkBox.value, onChanged: (e){
                  addCateoryController.checkBox.value=e;
                }));



              }, separatorBuilder: (context,int index)=>Divider(), itemCount: 15),
            )

          ],
        ),
      ),
        bottomNavigationBar: Container(
          height: orientation==Orientation.landscape?Get.height*0.12:Get.height*0.054,
          color: Colors.red.withOpacity(1),
          width: Get.width,
        child: Center(child: TextButton(child: constantWidget.CustomText('SAVE', FontWeight.normal,constantWidget.whiteColor, 15),)),
    ),
    );
  }

}
