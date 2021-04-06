import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Model/CategoryListDetails.dart';
import 'package:trolly_store/Model/CategoryListModel.dart';
import 'package:trolly_store/Network/CategoryListNetwork.dart';

import '../../constWidgets.dart';

class AddCategoryController extends GetxController{
  var productArray = List<ProductArray>().obs;
  var productGroup = List<ProductGroup>().obs;

  ConstantWidget constantWidget = ConstantWidget();
  TextEditingController categoryTitle;
  TextEditingController sequenceNumber;
  TextEditingController dialogueTextField;
  RxBool checkBox =false.obs;

  RxBool deleteProduct = false.obs;

  toggleMethod(){

    deleteProduct.value=deleteProduct.value==true?false:true;
  }


  getCategoryList()async{
    CategoryListNetwork categoryListNetwork = CategoryListNetwork();
    await categoryListNetwork.getCategoryList();
    productArray.value = categoryListNetwork.productArrayList;
    // print(productArray.value);
  }

  getCategoryGroupList()async{
    CategoryListNetwork categoryListNetwork = CategoryListNetwork();
    await categoryListNetwork.getCategoryListDetails();
    productGroup.value = categoryListNetwork.productGroup;
    print(productGroup.value);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    categoryTitle=TextEditingController();
    sequenceNumber=TextEditingController();
    dialogueTextField=TextEditingController();
    CategoryListNetwork().getCategoryListDetails();

    getCategoryList();
    getCategoryGroupList();
  }


}