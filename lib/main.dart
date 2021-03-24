import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/Orders/menuWidgets.dart';

import 'UI/Orders/ASapTabBar.dart';
import 'UI/Orders/eachItem.dart';
import 'UI/Orders/schedule.dart';
import 'UI/Orders/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    home: HomeScreen(),
  ));
}
