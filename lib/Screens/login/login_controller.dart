import 'package:finance_application/Screens/Main_Dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final rememberMe = false.obs;

  final String fixedEmail = "admin";
  final String fixedPassword = "1234";

  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  void login() {
    if (emailController.text == fixedEmail &&
        passwordController.text == fixedPassword) {
      Get.off(() => Dashboard_View());
    } else {
      Get.snackbar(
        "Login Failed",
        "Wrong Email or Password",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(12),
        icon: const Icon(Icons.error, color: Colors.white),
      );
    }
  }
}
