
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';


class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController userNameTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

  FocusNode usernameFN = FocusNode();
  FocusNode passwordFN = FocusNode();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    usernameFN.dispose();
    passwordFN.dispose();
    super.onClose();
  }


  String? validateUsername(String value) {
    if (!GetUtils.isUsername(value) || value.length <= 3) {
      return "Please enter a valid Username";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length <= 6) {
      return "Please enter a valid Password";
    }
    return null;
  }

  void loginPressed() async {
    usernameFN.unfocus();
    passwordFN.unfocus();

    String? userName = userNameTEC.text.trim();
    String? password = passwordTEC.text.trim();

    userNameTEC.text = userName;
    passwordTEC.text = password;
    
    if (kDebugMode) {
      print("this is where we will implement RSA");

      print("this is user name ${userNameTEC.text}");
      print("this is user password ${passwordTEC.text}");
    }
    await setUsername(userNameTEC.text);
    await setPassword(passwordTEC.text);
    Get.toNamed(Routes.ENCRYPTION);

  }
  setUsername(userName) async {
    print("this is user name $userName");
    // var RSAEncryptValue = RSA().RSAEncrypt(userName);
    // var message = utf8.decode(RSAEncryptValue);
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setString('userName', userName);
    // prefs.setString('userNameEncryptValue', message);
  }

  setPassword(password) async {
    print("this is user password $password");
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('password', password);
  }


}
