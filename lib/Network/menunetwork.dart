import 'package:dio/dio.dart';
import 'package:trolly_store/Model/productlist.dart';

class  MenuNetwork{


  List<Product> product;
  List<ItemArray> itemArray;

  ProductList productList;
  List<String> productsNames=[];
  List<String> itemName=[];



  Future productName() async{

   Dio dio = new Dio();
   dio.options.headers['Content-Type'] = 'application/json';
   dio.options.headers['lang'] = 0;

   var data ={
     
       "store_id": "5f7b660c82e4274e19b4658d",
       "server_token": "vwCvFGWpadWnsKhUF5FFPbeErcS0fcIz"
     

   };
   var response = await dio.post('https://app.trolleymate.co.uk/api/store/get_product_list',data: data);
   if(response.statusCode==200){

     var jsonData = response.data;
     ProductList  productList= ProductList.fromJson(jsonData);
     print("${productList}");

     List<Product> product = productList.products;
     this.product =product;
     List<ItemArray> itemnames = productList.itemArray;
     this.itemArray = itemnames;


itemnames.forEach((element) {
  element.itemName.forEach((element) {
    itemName.add(element);
  });

});

// print(itemnames[0].productId);
// print('itemname');
// print(itemName);
     //
     // for(int a=0;a<product.length;a++){
     //   List<String> list = product[a].name;
     //
     //
     // }
     // print(productsNames);


     product.forEach((products) {

       // print(products.name);
       products.name.forEach((names) {

         productsNames.add(names);

         // print(productsNames);
       });
     });


// print('sdsds');
//      print(product[0].sequenceNumber);
     // print(productsNames[1]);

   }


 }










}