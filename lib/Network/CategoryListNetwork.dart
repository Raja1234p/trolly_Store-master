import 'package:dio/dio.dart';
import 'package:trolly_store/Model/CategoryListDetails.dart';
import 'package:trolly_store/Model/CategoryListModel.dart';


class CategoryListNetwork{

  List<ProductArray> productArrayList;
  List<ProductGroup> productGroup;

  Future<CategoryListModel> getCategoryList()async{
    Dio dio = Dio();
    dio.options.headers['Content_Type'] = 'application/json';
    dio.options.headers['lang'] = 0;
    var formData = {
        "store_id": "5f7b660c82e4274e19b4658d",
        "server_token": "5BdjRZrWrC4dHm1LnWC7Raa57XV557ly"
    };
    var response = await dio.post('https://app.trolleymate.co.uk/api/store/get_group_list_of_group', data: formData);
    if(response.statusCode == 200){
      CategoryListModel categoryListModel = CategoryListModel.fromJson(response.data);
      productArrayList = categoryListModel.productArray;
      // print(productArrayList);
    }
    else{
      throw Exception('Could not load data');
    }
  }


  Future<CategoryListDetails> getCategoryListDetails()async{
    Dio dio = Dio();
    dio.options.headers['Content_Type'] = 'application/json';
    dio.options.headers['lang'] = 0;
    var formData = {
      "store_id": "5f7b660c82e4274e19b4658d",
      "server_token": "5BdjRZrWrC4dHm1LnWC7Raa57XV557ly",

    };
    var response = await dio.post('https://app.trolleymate.co.uk/api/store/get_product_group_list', data: formData);

    if(response.statusCode==200){
      
      CategoryListDetails categoryListDetails = CategoryListDetails.fromJson(response.data);
      productGroup=categoryListDetails.productGroups;
      // print(productGroup);
    }
  }
}