import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/Orders/menuWidgets.dart';

import 'UI/Authentication/TabBarView/TabBar.dart';
import 'UI/CategoryFolder/Category.dart';
import 'UI/CategoryFolder/addcategory.dart';
import 'UI/Orders/ASapTabBar.dart';
import 'UI/Orders/eachItem.dart';
import 'UI/Orders/schedule.dart';
import 'UI/Orders/homeScreen.dart';
import 'UI/googlemap.dart';
import 'UI/review/reviewwidget.dart';
import 'camertesting.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    home: ImagePickers(),

  ));
}
