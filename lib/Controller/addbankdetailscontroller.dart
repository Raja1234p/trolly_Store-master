import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class AddBankDetailController extends GetxController{

  TextEditingController accountHolderName;
  TextEditingController accountNumber;
  TextEditingController postalCode;
  TextEditingController sortNumber;
  TextEditingController dateOfBirth;
  TextEditingController password;

  RxBool accountHolder=false.obs;
  RxBool userAccountNumber=false.obs;
  RxBool userPostalCode=false.obs;
  RxBool userSortNumber=false.obs;
  RxBool boolpassword=false.obs;

  RxBool hideCancelAndSaveButton=true.obs;



  FocusNode focusNodeAccountHolderName;
  FocusNode focusNodeAccountNumber;
  FocusNode focusNodePostalCode;
  FocusNode focusNodeSortNumber;



  Rx<File> pickedImage=Rx(File(''));
  Rx<File> pickedImage1=Rx(File(''));



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    imagenul();

    accountHolderName=TextEditingController();
    accountNumber=TextEditingController();
    postalCode=TextEditingController();
    sortNumber=TextEditingController();
    dateOfBirth=TextEditingController();
    password=TextEditingController();

    focusNodeAccountHolderName=FocusNode();
    focusNodeAccountNumber=FocusNode();
    focusNodePostalCode=FocusNode();
    focusNodeSortNumber=FocusNode();

  }

  imagenul(){
    if(pickedImage==null){
      print('it is working');
    }
  }

  loadPicker(ImageSource source, context) async {
    try{
      var picked = await ImagePicker.platform.pickImage(source: source);
      File images = File(picked.path);
      if (picked != null) {
        // print(picked);
        _cropImage(images);
        update();



      }
      Get.back();
    }
    catch (e){
      print(e);
      Get.back();
      Get.snackbar('Acces Denined', 'Gave Permsission');

    }


  }
  loadPicker1(ImageSource source, context) async {
    try{
      var picked = await ImagePicker.platform.pickImage(source: source);
      File images = File(picked.path);
      if (picked != null) {
        // print(picked);
        _cropImage1(images);
        update();



      }
      Get.back();
    }
    catch (e){
      print(e);
      Get.back();
      Get.snackbar('Acces Denined', 'Gave Permsission');

    }


  }

  _cropImage(File picked) async {
    File cropped = await ImageCropper.cropImage(
        androidUiSettings: AndroidUiSettings(
          statusBarColor: Colors.red,
          toolbarColor: Colors.red,
          toolbarTitle: "Crop Image",
          toolbarWidgetColor: Colors.white,
        ),
        sourcePath: picked.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio16x9,
          CropAspectRatioPreset.ratio4x3,
        ],
        maxWidth: 500,
        maxHeight: 400
    );
    if (cropped != null) {
      //pickedImage.value = cropped;
      print("this is cropped file${cropped}");
      pickedImage.value = cropped;
      print(pickedImage1);

      print('Cropping Done');
      update();
    }
    else{
      print('Not Cropping');
    }
  }
  _cropImage1(File picked) async {
    File cropped = await ImageCropper.cropImage(
        androidUiSettings: AndroidUiSettings(
          statusBarColor: Colors.red,
          toolbarColor: Colors.red,
          toolbarTitle: "Crop Image",
          toolbarWidgetColor: Colors.white,
        ),
        sourcePath: picked.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio16x9,
          CropAspectRatioPreset.ratio4x3,
        ],
        maxWidth: 500,
        maxHeight: 400
    );
    if (cropped != null) {
      //pickedImage.value = cropped;
      print("this is cropped file${cropped}");
      pickedImage1.value=cropped;
      print(pickedImage1);

      print('Cropping Done');
      update();
    }
    else{
      print('Not Cropping');
    }
  }




}