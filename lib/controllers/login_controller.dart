import 'package:flutter/material.dart';
import 'package:flutter_login_getx/http/url.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;

  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  void apiLogin() async {
    Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    final response = await http
        .post(urlBase + urlLogin, body: {'email': emailTextController.text, 'password': passwordTextController.text});

    if (response.statusCode == 200) {
      Get.back();
      Get.offNamed('/homeView');
    } else {
      Get.back();
      Get.snackbar('error', '$response');
    }
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }
}
