import 'package:dio/dio.dart';
import 'package:trolly_store/Model/getorders.dart';

class OrderNetwork{

List<Order> getorder=[];


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





}