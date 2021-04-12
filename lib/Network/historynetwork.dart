import 'package:dio/dio.dart';
import 'package:trolly_store/Model/history_model.dart';

class HistoryNetwork{

  fetchHistory()async{

   Dio dio = Dio();

   dio.options.headers['Content-Type'] = 'application/json';
   dio.options.headers['lang'] = 0;
   var data ={
     'order_id': "60742446d2f26e63995244f0",
    'server_token': "0ZrnFLcwLUtbIzdJfhHkNnY4MCMy50RM",
    'store_id': "5f7b660c82e4274e19b4658d"
   };
   var response = await dio.post('https://app.trolleymate.co.uk/api/store/order_history_detail',data: data);
   if(response.statusCode==200){

     var jsonData  = response.data;
     print(response.data);
       HistoryModel historyModel = HistoryModel.fromJson(jsonData);
     OrderList orderList = historyModel.orderList;
     List<DatesTime> dateTime = orderList.dateTime;
     print('is This working');
     print(orderList.completedDateInCityTimezone.toString());

   }

  }

}


