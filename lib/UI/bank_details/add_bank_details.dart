import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:trolly_store/UI/bank_details/bankdetails.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:trolly_store/Controller/addbankdetailscontroller.dart';

import '../../constantClass1.dart';

class AddBankDetails extends StatelessWidget {
  final addBankDetailsController = Get.put(AddBankDetailController());


  @override
  Widget build(BuildContext context) {
    var media= MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          'Bank Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: () {
                checkValidation();
              })
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  child: Obx(()=> addBankDetailsController.pickedImage.value.path.isEmpty? DottedBorder(
                    dashPattern: [8, 10],
                    strokeWidth: 4,
                    color: Colors.grey,
                    child: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 60,
                      ),
                      width: Get.width * 0.3,
                      height: Get.height * 0.17,
                    ),
                  ): media==Orientation.portrait? Container(

                    width: Get.width * 0.3,
                    height: Get.height * 0.17,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: FileImage(addBankDetailsController.pickedImage.value),fit: BoxFit.cover)
                    ),
                  ):Container(

                    width: Get.width * 0.3,
                    height: Get.height * 0.22,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: FileImage(addBankDetailsController.pickedImage.value),fit: BoxFit.cover)
                    ),
                  )),
               onTap: (){
                 ConstWidget().showsDialog(context,
                   'Choose Photo',
                   'Pick From Gallery',
                   'Take a pictuer', () {
                     addBankDetailsController.loadPicker(ImageSource.gallery, context);
                   },
                       () {
                     addBankDetailsController.loadPicker(ImageSource.camera, context);
                   },);
               },
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: Obx(()=> addBankDetailsController.pickedImage1.value.path.isEmpty? DottedBorder(
                    dashPattern: [8, 10],
                    strokeWidth: 4,
                    color: Colors.grey,
                    child:

                    Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 60,
                      ),
                      width: Get.width * 0.3,
                      height: Get.height * 0.17,
                    ),
                  ): media==Orientation.portrait?Container(

                    width: Get.width * 0.3,
                    height: Get.height * 0.17,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: FileImage(addBankDetailsController.pickedImage1.value),fit: BoxFit.cover)
                    ),
                  ):Container(

                    width: Get.width * 0.3,
                    height: Get.height * 0.17,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: FileImage(addBankDetailsController.pickedImage1.value),fit: BoxFit.cover)
                    ),
                  )),
                  onTap: (){
                    ConstWidget().showsDialog(context,
                      'Choose Photo',
                      'Pick From Gallery',
                      'Take a pictuer', () {
                        addBankDetailsController.loadPicker1(ImageSource.gallery, context);
                      },
                          () {
                        addBankDetailsController.loadPicker1(ImageSource.camera, context);
                      },);
                  },
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => NameTextField(
                addBankDetailsController.accountHolderName,
                'Please add account holder name',
                'Account Holder Name',
                TextInputType.name,
                addBankDetailsController.accountHolder.value,
                addBankDetailsController.focusNodeAccountHolderName,
                (term) {
                  addBankDetailsController.focusNodeAccountHolderName.unfocus();
                  FocusScope.of(context).requestFocus(
                      addBankDetailsController.focusNodeAccountNumber);
                },
                TextInputAction.next,
                () {
                  if (addBankDetailsController.accountHolder.value == true) {
                    addBankDetailsController.accountHolder.value = false;
                  }
                },false)),
            SizedBox(
              height: 10,
            ),
            Obx(() => NameTextField(
                addBankDetailsController.accountNumber,
                'Please add valid account number',
                'Account Number',
                TextInputType.number,
                addBankDetailsController.userAccountNumber.value,
                addBankDetailsController.focusNodeAccountNumber,
                (term) {
                  addBankDetailsController.focusNodeAccountNumber.unfocus();
                  FocusScope.of(context).requestFocus(
                      addBankDetailsController.focusNodePostalCode);
                },
                TextInputAction.next,
                () {
                  if (addBankDetailsController.userAccountNumber.value ==
                      true) {
                    addBankDetailsController.userAccountNumber.value = false;
                  }
                },false)),
            SizedBox(
              height: 10,
            ),
            Obx(() => NameTextField(
                    addBankDetailsController.postalCode,
                    'Please add valid postal code',
                    'Postal Code',
                    TextInputType.name,
                    addBankDetailsController.userPostalCode.value,
                    addBankDetailsController.focusNodePostalCode, (term) {
                  addBankDetailsController.focusNodePostalCode.unfocus();
                  FocusScope.of(context).requestFocus(
                      addBankDetailsController.focusNodeSortNumber);
                }, TextInputAction.next, () {
              if (addBankDetailsController.userPostalCode.value ==
                  true) {
                addBankDetailsController.userPostalCode.value = false;
              }
            },false)),
            SizedBox(
              height: 10,
            ),
            Obx(() => NameTextField(
                addBankDetailsController.sortNumber,
                'Please valid Sort Number',
                'Sort Number',
                TextInputType.number,
                addBankDetailsController.userSortNumber.value,
                addBankDetailsController.focusNodeSortNumber,
                (term) {
                  addBankDetailsController.focusNodeSortNumber.unfocus();
                },
                TextInputAction.next,
                () {
                  if (addBankDetailsController.userSortNumber.value == true) {
                    addBankDetailsController.userSortNumber.value = false;
                  }
                },false)),
            SizedBox(
              height: 10,
            ),
          Padding(

              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8, bottom: 8),              child:

        TextFormField(
                controller: addBankDetailsController.dateOfBirth,
                readOnly: true,
                onTap: () {
                  datePicker(context);
                },
                decoration: InputDecoration(hintText: 'D.O.B',

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.4),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.4),
                  ),
                ),
              )),

          ],
        ),
      )),
    );
  }

  Padding NameTextField(
      TextEditingController controller,
      String text,
      String hint,
      TextInputType txt,
      bool trueorfalse,
      FocusNode focusNode,
      Function(String) onFieldSubmitted,
      TextInputAction textInputAction,
      Function() onTap,
      bool obscureText) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8, bottom: 8),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            child: TextFormField(
              obscureText: obscureText,
              cursorHeight: 20,
              cursorColor: Colors.black,
              textInputAction: textInputAction,
              onFieldSubmitted: onFieldSubmitted,
              focusNode: focusNode,
              controller: controller,
              onTap: onTap,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.4),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.4),
                ),
                hintStyle: TextStyle(color: Colors.black),
                labelText: hint,
                labelStyle:
                    TextStyle(color: Colors.grey.withOpacity(1), fontSize: 16),
                suffixIcon: trueorfalse
                    ? Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 30,
                      )
                    : null,
              ),
              keyboardType: txt,
            ),
          ),
          Visibility(
            visible: trueorfalse,
            child: Positioned(
                top: 36,
                right: 3,
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 38,
                  color: Colors.red,
                )),
          ),
          Positioned(
            top: 58,
            right: -10,
            //You can use your own custom tooltip widget over here in place of below Container
            child: trueorfalse
                ? Container(
                    width: 250,
                    height: 45,
                    decoration: BoxDecoration(
                      border:
                          Border(top: BorderSide(width: 2, color: Colors.red)),
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  bool Validation() {
    if (addBankDetailsController.accountHolderName.text.isEmpty) {
      addBankDetailsController.accountHolder.value = true;
      addBankDetailsController.userAccountNumber.value = false;
      addBankDetailsController.userPostalCode.value=false;
      addBankDetailsController.userSortNumber.value = false;
      return false;
    } else if (addBankDetailsController.accountNumber.text.isEmpty) {
      addBankDetailsController.accountHolder.value = false;
      addBankDetailsController.userAccountNumber.value = true;
      addBankDetailsController.userPostalCode.value=false;
      addBankDetailsController.userSortNumber.value = false;
      return false;
    }

    else if (addBankDetailsController.postalCode.text.isEmpty) {
      addBankDetailsController.accountHolder.value = false;
      addBankDetailsController.userPostalCode.value=true;
      addBankDetailsController.userAccountNumber.value = false;
      addBankDetailsController.userSortNumber.value = false;
      return false;
    }
    else if (addBankDetailsController.sortNumber.text.isEmpty) {
      addBankDetailsController.userSortNumber.value = true;
      addBankDetailsController.userPostalCode.value=false;
      addBankDetailsController.accountHolder.value = false;
      addBankDetailsController.userAccountNumber.value = false;
      return false;
    } else {
      addBankDetailsController.accountHolder.value = false;
      addBankDetailsController.userAccountNumber.value = false;
      addBankDetailsController.userSortNumber.value = false;
      addBankDetailsController.userPostalCode.value=false;
      return true;
    }
  }

  checkValidation() {
    if (Validation()) {
      // Get.off(() => BankDetails());
      if (addBankDetailsController.dateOfBirth.text.isEmpty){
        Fluttertoast.showToast(msg: 'DOB is missing');
        print('dob is working');



      }
      else if(addBankDetailsController.pickedImage.value.path=='' ){
        Fluttertoast.showToast(msg: 'Please add document Image');

      }else if(addBankDetailsController.pickedImage1.value.path==''){
        Fluttertoast.showToast(msg: 'Please add document Image');
      }
      else{
        customDialog();
      }


    }



    // customDialog();
  }

  DateTime selectedDate = DateTime.now();

  datePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (context, child) {
          return  Theme(
            data: ThemeData.light().copyWith(
              primaryColor: const Color(0xFF000000),
              accentColor: const Color(0xFF000000),
              colorScheme: ColorScheme.light(primary: const Color(0xFF000000)),
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary
              ),
            ),
            child: child,
          );
        },
        firstDate: DateTime(2000), context: context, lastDate: DateTime(2050), initialDate: selectedDate);

    if(picked!=null){
      selectedDate=picked;
      addBankDetailsController.dateOfBirth.text=DateFormat('dd-MM-yyyy').format(selectedDate);
    }
  }
  customDialog(){

    return Get.dialog(

        Center(
          child: Material(
            child: Container(

              height: Get.height*0.28,
              width: Get.width*0.9,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text('Verify Account',style: TextStyle(color: Colors.black,fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,right: 14,top: 15),
                      child: Text('Please enter your current password to verify your account',style: TextStyle(fontSize: 15,letterSpacing: 1),),
                    ),
                    SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.only(left:14,right: 14,top: 8),
                    //   child: TextFormField(
                    //     controller: addBankDetailsController.password,
                    //     cursorColor: Colors.black,
                    //     decoration: InputDecoration(
                    //       labelText: 'Password',
                    //       labelStyle: TextStyle(fontSize: 18,color: Colors.black),
                    //       contentPadding: EdgeInsets.zero,
                    //       enabledBorder: UnderlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black, width: 1.4),
                    //       ),
                    //       focusedBorder: UnderlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black, width: 1.4),
                    //       ),
                    //
                    //     ),
                    //   ),
                    // ),
                 Obx(()=>   NameTextField(addBankDetailsController.password, 'Password is missing', 'Password', TextInputType.name, addBankDetailsController.boolpassword.value, null, (val) {}, null, (){
                      if(addBankDetailsController.boolpassword.value=true){
                        addBankDetailsController.boolpassword.value=false;
                      }
                    },true)),
                  Obx(()=> addBankDetailsController.boolpassword.value?Container():  Visibility(
                       visible: addBankDetailsController.hideCancelAndSaveButton.value,
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){
                            Get.back();
                          }, child: Text('Cancel',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18),)),
                          TextButton(onPressed: (){
                            if(addBankDetailsController.password.text.isEmpty){
                              addBankDetailsController.boolpassword.value=true;
                            }
                            else{
                              addBankDetailsController.boolpassword.value=false;
                              print('done');
                            }
                          }, child: Text('Save',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18),)),
                        ],
                    ),
                     ))

                  ],
                ),
              ),
            ),
          ),
        )


    );
  }

}
