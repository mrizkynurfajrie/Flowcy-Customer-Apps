import 'dart:async';
import 'package:flowcy_customer/features/register/pages/form_daftar.dart';
import 'package:flowcy_customer/features/register/pages/form_data_diri.dart';
import 'package:flowcy_customer/features/register/pages/form_password.dart';
import 'package:flowcy_customer/features/register/pages/form_verifikasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ControllerRegister extends GetxController {
  final formKey = GlobalKey<FormState>();

  //Parent Page Controller//
  var currentPage = 0.obs;
  late PageController pageController;
  final List<Widget> pages = [
    const FormDaftar(),
    const FormVerifikasi(),
    const FormPassword(),
    const FormDataDiri(),
  ];
  changePage(index) => currentPage.value = index;

  //Daftar Controller//
  var inputtedEmail = ''.obs;

  //Verifikasi Controller//
  late TextEditingController otpController;
  late StreamController<ErrorAnimationType> errorController;
  var currentText = ''.obs;
  var showResendOtpButton = false.obs;

  //Buat Kata Sandi Controller//
  var passwordController = TextEditingController();

  //Data Diri Controller//
  var imgPreview = ''.obs;

  //Data Alamat Controller//

  @override
  void onInit() {
    //onInit parent controller//
    pageController = PageController(initialPage: currentPage.value);

    //onInit verifikasi controller//
    otpController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>.broadcast();
    super.onInit();
  }

  @override
  void dispose() {
    //dispose daftar controller//

    //dispose verifikasi controller//
    otpController.dispose();

    // dispose kata sandi controller//
    passwordController.dispose();
    super.dispose();
  }
}
