import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trolly_store/Controller/eachitemcontroller.dart';
import 'package:trolly_store/UI/Orders/homeScreen.dart';
import 'package:trolly_store/constantClass1.dart';

import '../../constWidgets.dart';
import 'package:get/get.dart';

import 'menuWidgets.dart';

// ignore: must_be_immutable
class EachItems extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();
  final eachItemController = Get.put(EachItemController());


  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: orientation == Orientation.landscape
            ? Size.fromHeight(Get.height * 0.6)
            : Size.fromHeight(Get.height * 0.3),
        child: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: Container(
              width:
                  orientation == Orientation.landscape ? Get.width : Get.width,
              color: constantWidget.lightBlack.withOpacity(1),
              height: orientation == Orientation.landscape
                  ? Get.height * 0.44
                  : Get.height * 0.24,
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    constantWidget.CustomText('Product Title', FontWeight.normal, constantWidget.greyColor, 15),
                    constantWidget.productTitle(eachItemController.productTitle,),
                    SizedBox(height: Get.height*0.01,child: Divider(color: constantWidget.greyColor,),),

                    constantWidget.CustomText('Item Name', FontWeight.normal, constantWidget.greyColor, 15),
                constantWidget.customTextField(eachItemController.itemName,(){

                  customDialog(context, 'Item Name', eachItemController.itemName, 'validationerror',


                        eachItemController.enableEdit.value? null: (){

                    eachItemController.itemName.text=eachItemController.addEachItem.text;
                    Get.back();
                  }, (e) => null,orientation);

                }),
                    SizedBox(height: Get.height*0.01,),
                    constantWidget.CustomText('Description', FontWeight.normal, constantWidget.greyColor, 15),
                    constantWidget.customTextField(eachItemController.description,(){

                      customDialog(context, 'Description', eachItemController.description, 'validationerror',


                          eachItemController.enableEdit.value? null: (){

                            eachItemController.description.text=eachItemController.description.text;
                            Get.back();
                          }, (e) => null,orientation);

                    }),
                    SizedBox(height: Get.height*0.01,),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            Obx(
              () => GestureDetector(
                child: eachItemController.enableEdit.value
                    ? IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          if(eachItemController.price.text.trim().isEmpty){
                            validationDialogue(context, 'Please Enter Price');
                          }
                          else  if(eachItemController.tax.text.trim().isEmpty){
                            validationDialogue(context, 'Please Enter tax value');
                          }
                          else{
                            Get.to(HomeScreen());
                            eachItemController.enableEdit.value=false;



                          }
                        },
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.mode_edit,
                          color: constantWidget.whiteColor,
                          size: 30,
                        ),
                      ),
                onTap: () {
                  eachItemController.toggleEdit();
                },
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // shrinkWrap: true,
              children: [
            Obx(()=> SizedBox(

                  height: orientation == Orientation.landscape
                      ? Get.height * 0.32
                      : Get.height * 0.15,
                  child:  ListView.builder(

                      scrollDirection: Axis.horizontal,
                      itemCount: eachItemController.listofImages.length,
                      itemBuilder: (context,int index){

                      if(index==eachItemController.listofImages.length-1){
                        return TextButton(onPressed: (){

                          ConstWidget().showsDialog(context,
                              'Choose Photo',
                              'Pick From Gallery',
                              'Take a pictuer', () {
                              eachItemController.loadPicker(ImageSource.gallery, context);
                            },
                                () {
                              eachItemController.loadPicker(ImageSource.camera, context);
                            },);
                        }, child: Image.asset('assets/images/add_image.png',width: 50,height: 40));
                      }
                      else {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              color: Colors.yellow,
                              image: DecorationImage(image: eachItemController.pickedImage!=null?FileImage(eachItemController.listofImages.elementAt(index+1),):Container(),
                                fit: BoxFit.cover

                            ),

                            ) ,

                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                right: -15,
                                top: -15,
                                child: IconButton(icon: Icon(Icons.close,color: Colors.black12.withOpacity(0.6),), onPressed: (){
                                  eachItemController.listofImages.removeAt(index+1);
                                }),
                              ),
                            ],
                          ),
                          ),
                        );
                      }
                    }),
                  )),

                SizedBox(
                  height: Get.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 5),
                  child: constantWidget.CustomText('Make Visible/Not?',
                      FontWeight.normal, constantWidget.greyColor, 15),
                ),
                Obx(() => Switch(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: eachItemController.enableEdit.value
                          ? eachItemController.isCheckon.value
                          : false,
                      onChanged: (onChanged) {
                        eachItemController.setCheck();
                      },
                      inactiveThumbColor:
                          constantWidget.greyColor.withOpacity(0.4),
                      activeColor: constantWidget.redColor,
                    )),
                Divider(
                  color: constantWidget.blackColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: constantWidget.CustomText(
                      'Specifications',
                      FontWeight.normal,
                      constantWidget.blackColor.withOpacity(0.7),
                      15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        constantWidget.CustomText(
                            'Add new specification',
                            FontWeight.normal,
                            constantWidget.blackColor.withOpacity(0.8),
                            18)
                      ],
                    ),
                    onTap: () {
                      eachItemController.enableEdit.value
                          ? specificationDialogue(context)
                          : false;
                    },
                  ),
                ),
                Divider(
                  color: constantWidget.blackColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 12),
                      child: Icon(Icons.euro_symbol_sharp),
                    ),
                    Obx(() => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                              width: Get.width * 0.8,
                              child: constantWidget.priceTextField(
                                  eachItemController.price,
                                  'Price',
                                  eachItemController.focusNodePrice, (price) {
                                eachItemController.focusNodePrice.unfocus();
                                FocusScope.of(context).requestFocus(
                                    eachItemController
                                        .focusNodePriceWithoutOffer);
                              }, TextInputAction.next,
                                  eachItemController.enableEdit.value)),
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 12),
                      child: Icon(Icons.euro_symbol_sharp),
                    ),
                    Obx(() => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                              width: Get.width * 0.8,
                              child: constantWidget.priceTextField(
                                  eachItemController.priceWithoutOffer,
                                  'Price Without Offer',
                                  eachItemController.focusNodePriceWithoutOffer,
                                  (price) {
                                eachItemController.focusNodePriceWithoutOffer
                                    .unfocus();
                                FocusScope.of(context).requestFocus(
                                    eachItemController.focusNodeTax);
                              }, TextInputAction.next,
                                  eachItemController.enableEdit.value)),
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 12),
                      child: Icon(Icons.euro_symbol_sharp),
                    ),
                    Obx(() => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                              width: Get.width * 0.8,
                              child: constantWidget.priceTextField(
                                  eachItemController.tax,
                                  'Tax',
                                  eachItemController.focusNodeTax, (price) {
                                eachItemController.focusNodeTax.unfocus();
                                FocusScope.of(context).requestFocus(
                                    eachItemController.focusNodeSequence);
                              }, TextInputAction.next,
                                  eachItemController.enableEdit.value)),
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Obx(() => Padding(
                      padding: const EdgeInsets.only(left: 44.0),
                      child: Container(
                          width: Get.width * 0.8,
                          child: constantWidget.priceTextField(
                              eachItemController.sequenceNumber,
                              'Squence Number',
                              eachItemController.focusNodeSequence, (price) {
                            eachItemController.focusNodePrice.unfocus();
                          }, TextInputAction.done,
                              eachItemController.enableEdit.value)),
                    )),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: constantWidget.CustomText('In Stock/Not?',
                      FontWeight.normal, constantWidget.blackColor, 15),
                ),
                Obx(() => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Switch(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: eachItemController.enableEdit.value
                            ? eachItemController.stockOrOutOfStcok.value
                            : false,
                        onChanged: (onChanged) async {
                          eachItemController.togglestockOrOutOfStcok();

                        },
                        inactiveThumbColor:
                            constantWidget.greyColor.withOpacity(0.6),
                        activeColor: constantWidget.redColor,
                      ),
                    )),
              ]),
        ),
      ),
    );
  }

  specificationDialogue(
    BuildContext context
  ) {
    return Get.dialog(Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 15, left: 15),
      child: Center(
        child: Container(
          width: Get.width,
          height:  Get.height * 0.13,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please add specification first in selected product',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  customDialog(BuildContext context, txt,TextEditingController controller
      ,validationerror,Function() fn,Function(String) onchanged,Orientation orientation) {
    Get.dialog(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Container(
        color: Colors.amber,
        width: Get.width,
        height: orientation==Orientation.landscape?Get.height*0.5: Get.height * 0.27,
        child: Material(
          child: Stack(children: [
            Positioned(

                left: 30,
                right: 30,
                top: 110,
                child: Container(
                    width: Get.width,
                    child: TextFormField(
                      onChanged: onchanged,
                      focusNode: eachItemController.focusNodeItemName,
                      onFieldSubmitted: (_){
                        print('working or not');
                        eachItemController.test.value=true;
                      },
                      controller:controller ,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                    ))),




            Positioned(
                top: 30,
                left: 30,
                child: Text(
                  txt,
                  style: TextStyle(fontSize: 20),
                )),




            Positioned(left: 30, top: 97, child: Text('English')),


            Positioned(
              bottom: -2,
              right: 80,
              child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('CANCEL', style: TextStyle(color: Colors.black))),
            ),



            Positioned(
              bottom: -2,
              right: 10,
              child: TextButton(
                  onPressed: fn,
                  child: Text(
                    'SAVE',

                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ]),
        ),
      )),
    ));
  }





  validationDialogue(
      BuildContext context,txt
      ) {
    return Get.dialog(Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 15, left: 15),
      child: Center(
        child: Container(
          width: Get.width,
          height:  Get.height * 0.13,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      txt,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }


}
