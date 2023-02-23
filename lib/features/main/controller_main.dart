import 'package:flowcy_customer/home/page_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

import '../../shared/helpers/utils.dart';

class ControllerMain extends GetxController {
  late PageController pageController;
  var currentPage = 0.obs;
  final List<Widget> pages = [
    const PageHome(),
  ];

  void changePage(index) => currentPage.value = index;

@override
  void onInit() {


    
    super.onInit();
    pageController = PageController(initialPage: currentPage.value);
  }

  @override
  void onReady() async {
    super.onReady();
    var pageArg = Get.arguments;
    if (pageArg != null) {
      changePage(pageArg);
      pageController.jumpToPage(pageArg);
    }

    // FirebaseMessaging.instance.getInitialMessage().then((message) {
    //   log(message.toString());
    //   if (message != null) {
    //     try {
    //       handleNotificationRoute(
    //           message.data['screen'],
    //           int.parse(message.data['id']),
    //           secondId: message.data['idPackage'] == null || message.data['idPackage'] == 0
    //               ? null
    //               : int.parse(message.data['idPackage'])
    //       );
    //     } catch (e) {
    //       log("error : " + e.toString());
    //     }
    //   }
    // });
  }

}
