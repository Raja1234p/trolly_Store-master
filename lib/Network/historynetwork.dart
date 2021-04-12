import 'package:dio/dio.dart';
import 'package:trolly_store/Model/history_model.dart';

class HistoryNetwork{
  HistoryModel historyModel;
  OrderList orderList;
  List<DatesTime> dateTime;

  fetchHistory()async{

   Dio dio = Dio();

   dio.options.headers['Content-Type'] = 'application/json';
   dio.options.headers['lang'] = 0;
   var data ={
     "store_id": "5f7b660c82e4274e19b4658d",
     "server_token": "tjhCYehIJoFj3IRDR06hK54UdEfWeRrG",
     "order_id": "60742446d2f26e63995244f0"
   };
   var response = await dio.post('https://app.trolleymate.co.uk/api/store/order_history_detail',data: data);
   if(response.statusCode==200){

     var jsonData  = response.data;
     print(response.data);
       historyModel = HistoryModel.fromJson(jsonData);
      orderList = historyModel.orderList;
      dateTime = orderList.dateTime;
     print('is This working');
     print(orderList.createdAt.toString());

   }

  }

}


