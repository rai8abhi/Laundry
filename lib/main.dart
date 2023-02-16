import 'package:a1_laundry/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login",
    initialRoute: AppPages.INITIAL,
    defaultTransition: Transition.native,
    getPages: AppPages.routes,
  ));
}
