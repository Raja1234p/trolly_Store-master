import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/Network/Network.dart';

class RegisterController extends GetxController {
  var ischecked = false.obs;
  var countryText = 'United Kingdom'.obs;
  var countryCodeText = '+44'.obs;
 // var pickedImage;
 Rx<File> pickedImage=Rx(File('null'));
  List<File> listofImages = List<File>().obs;


 @override
  // void onClose() { // called just before the Controller is deleted from memory
  //  pickedImage. = '';
  //   super.onClose();
  // }

  checked(bool value) {
    ischecked.value = value;
    print(value);
  }

  country(value) {
    countryText.value = value;
  }

  loadPicker(ImageSource source, context) async {
    try{
var picked = await ImagePicker.platform.pickImage(source: source);
File images = File(picked.path);
    if (picked != null) {
      // print(picked);
       _cropImage(images);
       listofImages.add(images);


    }
    Get.back();
    }
    catch (e){
      print(e);
      Get.back();
      Get.snackbar('Acces Denined', 'Gave Permsission');

    }
    
    
  }

//!----------------
  RxBool name = false.obs;


  RxBool lname = false.obs;

  RxBool emailvalidation = false.obs;
  RxBool emailvalidation1 = false.obs;
  RxBool emailtextfieldicon = false.obs;
  RxBool showemailarrow = false.obs;
  RxBool showemailarrow1 = false.obs;


  RxBool passwordvalidation = false.obs;
  RxBool passwordvalidation1 = false.obs;
  RxBool passtextfieldicon = false.obs;
  RxBool showpasswordarrow = false.obs;
  RxBool showepasswordarrow1 = false.obs;



  RxBool cnfpassvalidation = false.obs;
  RxBool cnfpassvalidation1 = false.obs;
  RxBool cnfpasstextfieldicon = false.obs;
  RxBool showcnfpassarrow = false.obs;
  RxBool showcnfpassarrow1 = false.obs;



  RxBool phonevalidation = false.obs;
  RxBool phonevalidation1 = false.obs;
  RxBool phonetextfieldicon = false.obs;
  RxBool showephonearrow = false.obs;
  RxBool showephonearrow1 = false.obs;






  RxBool circular = false.obs;





  var countrycode =''.obs;





  RxBool showredicon1=false.obs;
  RxBool showicon = false.obs;

  RxBool city = false.obs;
  RxBool number = false.obs;
  RxBool number1 = false.obs;
  RxBool address = false.obs;

var check = ''.obs;
  TextEditingController fName;
  TextEditingController countryCode;

  TextEditingController lName;
  TextEditingController loginemail;
  TextEditingController loginpass;
TextEditingController resetPass;

  TextEditingController emailtxt;
  TextEditingController passtxt;
  TextEditingController cnftxt;
  TextEditingController phonetxt;
  TextEditingController addtxt;
  TextEditingController countrytxt;
  TextEditingController citytxt;


//! Fetch Data
  getRegisterdata(String name,String lastname,String email,String address,String city,String password,String phoneNumber,String countryCode) async{
     await Network().registeration(name,lastname,email,address,city,password,phoneNumber,countryCode);


  }
// getRegisterdata() async{
//      await Network().registeration(fName.text,lName.text,loginemail.text,addtxt.text,citytxt.text,passtxt.text,phonetxt.text,countrytxt.text);


//   }

  FocusNode firstNameFocus;

FocusNode lastNameFocus;

FocusNode emailNameFocus;
FocusNode passNameFocus;
FocusNode cnfNameFocus;

FocusNode countryNameFocus;

FocusNode cityNameFocus;

FocusNode phoneNameFocus;
FocusNode addNameFocus;
FocusNode submit;
FocusNode loginnode;
RxBool checkbox = false.obs;
TextEditingController loginemailtxt;
var countrycodename = ''.obs;





  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    resetPass =TextEditingController();
    loginemailtxt =TextEditingController();

    loginemail= TextEditingController();
    loginpass= TextEditingController();
    fName =TextEditingController();
    lName =TextEditingController();
    emailtxt =TextEditingController();
    passtxt =TextEditingController();
    cnftxt =TextEditingController();
    phonetxt =TextEditingController();
    addtxt =TextEditingController();
    countrytxt =TextEditingController();
    citytxt =TextEditingController();
    countryCode =TextEditingController(text: 'country');
    countryCode.text=countrycode.value;


     firstNameFocus=FocusNode();
    loginnode=FocusNode();

    lastNameFocus=FocusNode();
    submit = FocusNode();


    emailNameFocus=FocusNode();
     passNameFocus=FocusNode();
     cnfNameFocus=FocusNode();

     countryNameFocus=FocusNode();

     cityNameFocus=FocusNode();

     phoneNameFocus=FocusNode();
     addNameFocus=FocusNode();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    resetPass.dispose();
    fName.dispose();
    lName.dispose();
    emailtxt.dispose();
    passtxt.dispose();
    submit.dispose();
    loginemailtxt.dispose();

    cnftxt.dispose();
    phonetxt.dispose();
    addtxt.dispose();
    countrytxt.dispose();
    citytxt.dispose();
    countryCode.dispose();
    loginemail.dispose();
    loginpass.dispose();
    loginnode.dispose();

    firstNameFocus.dispose();
    lastNameFocus.dispose();

    emailNameFocus.dispose();
    passNameFocus.dispose();
    cnfNameFocus.dispose();

    countryNameFocus.dispose();

    cityNameFocus.dispose();

    phoneNameFocus.dispose();
    addNameFocus.dispose();
    super.dispose();




  }
//!-----------------



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
      maxWidth: 800,
    );
    if (cropped != null) {
       //pickedImage.value = cropped;
      print("this is cropped file${cropped}");
       pickedImage.value = cropped;
      print(pickedImage);
      print('Cropping Done');
      update();
    }
    else{
      print('Not Cropping');
    }
  }
}
