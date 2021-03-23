

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ConstantWidget{
  final blackColor=Colors.black;
  final greyColor=Colors.grey;
  final redColor=Colors.red;
  final whiteColor=Colors.white;
  final lightBlack=Colors.black38;



  // ignore: non_constant_identifier_names
  Widget CustomText(String txt,FontWeight fontWeight,Color color,double fontSize){
    return Text(txt,

      maxLines: 4,
      style: TextStyle(fontWeight: fontWeight,color:color,fontSize:fontSize  ),);
  }




  Widget stockAndOutOfStock(String txt,FontWeight fontWeight,Color color,double fontSize){
    return Text(txt,maxLines: 2,style: TextStyle(fontWeight: fontWeight,color:color,fontSize:fontSize  ),);
  }

  Widget customTextField(TextEditingController textEditingController,Function()fn){
    return TextFormField(
      onTap: fn,
      readOnly: true,
      textDirection: TextDirection.ltr,
            style: TextStyle(
              color: whiteColor
            ),
      textAlign: TextAlign.left,
      controller: textEditingController,
       decoration: InputDecoration(

isDense: true,

         enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: greyColor),
         ),

         border: UnderlineInputBorder(
    borderSide: BorderSide(color: greyColor),
         ),

         focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: greyColor),
         ),

       ),
    );
  }


  Widget productTitle(TextEditingController textEditingController){
    return TextFormField(

      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: whiteColor
      ),
      textAlign: TextAlign.left,
      controller: textEditingController,
      decoration: InputDecoration(
        enabled: false,
        isDense: true,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),

        border: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),

        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),

      ),
    );
  }


  Widget priceTextField(TextEditingController textEditingController,String lblText,FocusNode focusNode,Function(String) onFieldSubmitted,TextInputAction textInputAction,bool enable){

    return TextFormField(controller: textEditingController,

        keyboardType: TextInputType.number,
        textInputAction: textInputAction,
        focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: blackColor,
      decoration: InputDecoration(
        enabled: enable,
        contentPadding: EdgeInsets.zero,
        isDense: true,
        labelText: lblText,
        labelStyle: TextStyle(color: greyColor),


        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: blackColor),
        ),

        border: UnderlineInputBorder(
          borderSide: BorderSide(color: blackColor),
        ),

        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: blackColor),
        ),
      ),


    );

  }


   validationDialogue(BuildContext context,txt){

    return showDialog(context: context, builder: (builder){
      return AlertDialog(title: Text(txt),
        actions: [TextButton(onPressed: (){
          Get.back();
        }, child: Text('Ok'))],
      );

    });
  }




}