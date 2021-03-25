

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:trolly_store/Model/getorders.dart';
import 'package:trolly_store/Model/notifyneworder.dart';
import 'package:trolly_store/UI/Orders/orderdetails.dart';

class OrderNetwork{

List<Order> getorder=[];
NotfifNewOrder notfifNewOrder;

StoreDetail storeDetail;
List<double> list;


Dio dio;



 Future toShowOrder() async{


  Dio dio = new Dio();

  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.headers['lang'] = 0;

  var data ={
    "order_type": "",
    "page": "1",
    "payment_mode": "",
    "pickup_type": "",
    "search_field": "user_detail.first_name",
    "search_value": "",
    "server_token": "4ohFr6yI2BxE1i6gBpki8VvV1fqJryNI",
    "store_id": "5f7b660c82e4274e19b4658d"
  };

  var response = await dio.post('https://app.trolleymate.co.uk/api/store/order_list_search_sort',
  data: data
  );

  if(response.statusCode==200){
    var jsonDaTa = response.data;
    for (int i = 0; i < jsonDaTa['orders'].length; i++){

      Map<String, dynamic> orderListData =
      new Map<String, dynamic>.from(jsonDaTa['orders'][i]);
    Order order =Order.fromJson(orderListData);
      getorder.add(order);
      print('this is network class ${getorder[0].uniqueId.toString()}');

    }



    print(response);

  // return getOrdersFromJson(jsonDaTa);


    print(jsonDaTa['orders']);
  }
}

Future notifyNewOrders() async{


   Dio dio = Dio();
   dio.options.headers['Content-Type']='application/json';
   dio.options.headers['lang']='0';

   var data ={
     "store_id": "5f7b660c82e4274e19b4658d",
     "server_token": "hMNzpV2kZeY9rd7ETWHJS4F2lXcHPoAJ"
   };
   var response = await dio.post('https://app.trolleymate.co.uk/api/store/store_notify_new_order',data: data);
   var jsonData = response.data;
   if(response.statusCode==200){
    // for(int i=0;i<jsonData.length;i++){
    //   print("running or not${jsonData['store_detail']}");
    //
    //   Map<String,dynamic> orderdetails = new Map<String,dynamic>.from(jsonData['store_detail']);
    //   StoreDetail detail = StoreDetail.fromJson(orderdetails);
    //   storeDetailsList.add(detail);
    //   print("this is notify list ${storeDetailsList[i].location[1]}");
    //
    // }

     NotfifNewOrder notifyNewOrder = NotfifNewOrder.fromJson(response.data);
     // print(notifyNewOrder);
     StoreDetail storeDetail = notifyNewOrder.storeDetail;
     // print(storeDetail);
     this.storeDetail = storeDetail;
     List<double> list = storeDetail.location;
     // print("This is list");
     // print(list);
     this.list = list;
     // print(this.storeDetail);
     print(this.list);

   }

}





}