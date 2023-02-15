import 'package:flowcy_customer/features/login/api_login.dart';
import 'package:flowcy_customer/features/login/forgot_password/pages/form_input_email.dart';
import 'package:flowcy_customer/features/login/forgot_password/pages/form_input_new_password.dart';
import 'package:flowcy_customer/features/login/forgot_password/pages/new_password_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  final ApiLogin api;
  ControllerLogin({required this.api});

  //Controller Login - Global//
  final formKey = GlobalKey<FormState>();

  //Controller Login//
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  //Controller Forgot Password//
  var txtForgotPasswordEmail = TextEditingController();
  var txtForgotPassword = TextEditingController();
  var emailAccount = '(email)'.obs;
  var currentPage = 0.obs;
  late PageController pageController;
  final List<Widget> pages = [
    const FormInputEmail(),
    const FormInputNewPassword(),
  ];
  changePage(index) => currentPage.value = index;

  @override
  void onInit() async {
    // TODO: implement onInit
    pageController = PageController(initialPage: currentPage.value);
    super.onInit();
  }
}
