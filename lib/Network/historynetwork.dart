import 'package:dio/dio.dart';
import 'package:trolly_store/Model/history_model.dart';

class HistoryNetwork{

  fetchHistory()async{

   Dio dio = Dio();

   dio.options.headers['Content-Type'] = 'application/json';
   dio.options.headers['lang'] = 0;
   var data ={
     "store_id": "5f7b660c82e4274e19b4658d",
     "server_token": "GJ7wJTydTwvuZeAeeozMB5F8YRcu0vAu",
     "order_id": "60702b43d2f26e6399524491"
   };
   var response = await dio.post('https://app.trolleymate.co.uk/api/store/order_history_detail',data: data);
   if(response.statusCode==200){

     var jsonData  = response.data;
       // HistoryModel historyModel = HistoryModel.fromJson(jsonData);
     // OrderList orderList = historyModel.orderList;
     // List<DateTime> dateTime = orderList.dateTime;
     // for(int i=0;i<dateTime.length;i++){
     //   print(dateTime[i].date);
     // }

   }

  }

}


