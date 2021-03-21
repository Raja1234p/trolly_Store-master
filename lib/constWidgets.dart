
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstantWidget{
  final blackColor=Colors.black;
  final greyColor=Colors.grey;
  final redColor=Colors.red;
  final whiteColor=Colors.white;
  final lightBlack=Colors.black38;



  // ignore: non_constant_identifier_names
  Widget CustomText(String txt,FontWeight fontWeight,Color color,double fontSize){
    return Text(txt,style: TextStyle(fontWeight: fontWeight,color:color,fontSize:fontSize  ),);
  }

  Widget stockAndOutOfStock(String txt,FontWeight fontWeight,Color color,double fontSize){
    return Text(txt,maxLines: 2,style: TextStyle(fontWeight: fontWeight,color:color,fontSize:fontSize  ),);
  }

  Widget customTextField(TextEditingController textEditingController){
    return TextFormField(
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

}