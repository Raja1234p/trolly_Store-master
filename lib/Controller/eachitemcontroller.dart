import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class EachItemController extends GetxController {
  TextEditingController productTitle;
  TextEditingController itemName;
  TextEditingController description;
  TextEditingController addEachItem;
  // ignore: deprecated_member_use
  List<File> listofImages = List<File>().obs;
  Rx<File> pickedImage=Rx(File('null'));



  FocusNode focusNodeItemName;
  TextEditingController price;
  TextEditingController priceWithoutOffer;
  TextEditingController tax;
  TextEditingController sequenceNumber;
  RxString name = 'sdfsds'.obs;
  FocusNode focusNodePrice;
  FocusNode focusNodePriceWithoutOffer;
  FocusNode focusNodeTax;
  FocusNode focusNodeSequence;

  RxBool checkIteName = false.obs;
  RxBool checkDescription = false.obs;

  var isCheckon = false.obs;

  RxBool enableEdit = false.obs;

  RxBool test = true.obs;

  RxBool stockOrOutOfStcok = false.obs;

  togglestockOrOutOfStcok() {
    stockOrOutOfStcok.value = stockOrOutOfStcok.value == true ? false : true;
    update();
  }

  setCheck() {
    isCheckon.value = isCheckon.value == true ? false : true;
    update();
  }

  toggleEdit() {
    enableEdit.value = enableEdit.value == true ? false : true;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    increaseindexvalue();
    focusNodeItemName = FocusNode();
    productTitle = TextEditingController(text: 'Baby & Todddler Food');
    itemName = TextEditingController(text: 'Nestle Cerelac baby Cereal');
    description = TextEditingController(text: '500 Grams');

    price = TextEditingController(text: '6.ssdfsd49');
    priceWithoutOffer = TextEditingController(text: '12');
    tax = TextEditingController(text: '0.0');
    sequenceNumber = TextEditingController(text: '12489');

    focusNodePrice = FocusNode();
    focusNodePriceWithoutOffer = FocusNode();
    focusNodeTax = FocusNode();
    focusNodeSequence = FocusNode();
  }


  increaseindexvalue(){
    if(listofImages.length==0){
      print("after before${listofImages.length}");
      listofImages.length= listofImages.length+1;
      print("after inc${listofImages.length}");
      update();
    }
  }


  loadPicker(ImageSource source, context) async {
    try{
      var picked = await ImagePicker.platform.pickImage(source: source);
      File images = File(picked.path);
      if (picked != null) {
        // print(picked);
        _cropImage(images);
        listofImages.add(images);
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
      print(pickedImage);

      print('Cropping Done');
      update();
    }
    else{
      print('Not Cropping');
    }
  }





}
