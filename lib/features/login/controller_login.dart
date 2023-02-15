import 'package:flowcy_customer/features/login/api_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  final ApiLogin api;
  ControllerLogin({required this.api});

  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();
}
