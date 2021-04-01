

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/CategoryFolder/addcategory.dart';
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

  addCategoryTextField(TextEditingController controller,String label,bool diableTextField,bool readonly,Function()onTap,TextInputType textInputType){
    return TextFormField(
      cursorColor:blackColor,

      keyboardType: textInputType,
      onTap: onTap,
      readOnly: readonly,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        labelText: label,
        labelStyle: TextStyle(color: greyColor),

        enabled: diableTextField,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),

        border: UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),

        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: blackColor),
        ),
      ),
    );
  }

customTextFieldDialog(TextEditingController controller,Function() updateValue){
    return Get.dialog(
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Center(child: Container(
          width: Get.width,
          height: Get.height*0.27,
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: CustomText('Category Title', FontWeight.bold, blackColor, 22),
                ),

                SizedBox(height: Get.height*0.012,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: TextFormField(
                    cursorColor: blackColor,
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: 'English',
                      labelStyle: TextStyle(color: Colors.grey),
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),

                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: blackColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height*0.01,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [TextButton(onPressed: (){
                      Get.back();
                    }, child: Text('Canel'.toUpperCase(),style: TextStyle(color: blackColor),)),

                      TextButton(onPressed: updateValue, child: Text('Ok'.toUpperCase(),style: TextStyle(color: blackColor))),
                    ],
                  ),
                )


              ],
            ),
          )
        )),
      )

    );

}


}