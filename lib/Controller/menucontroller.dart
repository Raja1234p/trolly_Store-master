import 'package:get/get.dart';
import 'package:trolly_store/Model/productlist.dart';
import 'package:trolly_store/Network/menunetwork.dart';

class MenuController extends GetxController{

  RxBool switchValue=true.obs;
  var names = List<String>().obs;
  var product = List<Product>().obs;
  var itemArray = List<ItemArray>().obs;
  var itemName = List<String>().obs;
  var productId =''.obs;



  selectSwitchValue(value){
    switchValue.value=value;
  }

  getNames() async{
    MenuNetwork network = MenuNetwork();
    await network.productName();
    product.value=network.product;
    // await MenuNetwork().productName();
    names.value = network.productsNames;
    itemArray.value=network.itemArray;
    itemName.value=network.itemName;
    print('this is product id${itemArray[0].productId}');
    print('this is iname ${itemName}');



    // print(names);
    // print("This is data");
    // print(network.productsNames);
    // print("This is product");
    // print(product[0].sequenceNumber);
  }
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNames();
  }
}