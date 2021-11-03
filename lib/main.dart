import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/View/homeScreen.dart';
import 'package:shopify_app/utils/appColors.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: Home(),
    );
  }
}
