import 'package:flowcy_customer/features/activity/api_activity.dart';
import 'package:flowcy_customer/features/activity/controller_activity.dart';
import 'package:flowcy_customer/features/main/controller_main.dart';
import 'package:flowcy_customer/features/notification/api_notification.dart';
import 'package:flowcy_customer/features/notification/controller_notification.dart';
import 'package:flowcy_customer/features/profile/api_profile.dart';
import 'package:flowcy_customer/features/profile/controller_profile.dart';
import 'package:flowcy_customer/home/api_home.dart';
import 'package:flowcy_customer/home/controller_home.dart';
import 'package:get/get.dart';

class BindingMain implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerMain>(() => ControllerMain());
    Get.lazyPut<ControllerHome>(() => ControllerHome(api: ApiHome()));
    Get.lazyPut<ControllerActivity>(() => ControllerActivity(api: ApiActivity()));
    Get.lazyPut<ControllerNotification>(() => ControllerNotification(api: ApiNotification()));
    Get.lazyPut<ControllerProfile>(() => ControllerProfile(api: ApiProfile()));
  }
}
